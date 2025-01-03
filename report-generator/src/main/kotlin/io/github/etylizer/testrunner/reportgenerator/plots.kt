package io.github.etylizer.testrunner.reportgenerator

import io.github.etylizer.testrunner.reportgenerator.data.*
import org.jetbrains.kotlinx.dataframe.DataFrame
import org.jetbrains.kotlinx.dataframe.api.count
import org.jetbrains.kotlinx.dataframe.api.filter
import org.jetbrains.kotlinx.dataframe.api.map
import org.jetbrains.kotlinx.kandy.dsl.categorical
import org.jetbrains.kotlinx.kandy.dsl.plot
import org.jetbrains.kotlinx.kandy.ir.Plot
import org.jetbrains.kotlinx.kandy.ir.bindings.NonPositionalMappingParameters
import org.jetbrains.kotlinx.kandy.letsplot.export.save
import org.jetbrains.kotlinx.kandy.letsplot.feature.Position
import org.jetbrains.kotlinx.kandy.letsplot.feature.layout
import org.jetbrains.kotlinx.kandy.letsplot.feature.position
import org.jetbrains.kotlinx.kandy.letsplot.layers.bars
import org.jetbrains.kotlinx.kandy.letsplot.layers.line
import org.jetbrains.kotlinx.kandy.letsplot.multiplot.model.PlotGrid
import org.jetbrains.kotlinx.kandy.letsplot.multiplot.plotGrid
import org.jetbrains.kotlinx.kandy.letsplot.scales.continuousColorViridis
import org.jetbrains.kotlinx.kandy.util.color.Color
import java.util.*

private fun DataFrame<ResultSummary>.findDivergingResults(includeDialyzer: Boolean = true) = filter {
    val rowValues = if (includeDialyzer) listOf(dialyzer, eqwalizer, etylizer, gradualizer) else listOf(eqwalizer, etylizer, gradualizer)
    rowValues.contains(ResultType.Pass) && rowValues.contains(ResultType.Fail)
}

private fun NonPositionalMappingParameters<*, *>.createColorScale() = categorical(
    ResultType.Pass to Color.hex("#016AA2"),
    ResultType.Fail to Color.hex("#CA5100"),
    ResultType.NotImplemented to Color.hex("#FFBA7A"),
    ResultType.Timeout to Color.hex("#CFCFCF"),
    ResultType.CrashMemory to Color.hex("#5F9ED1"),
    ResultType.Unknown to Color.hex("#898989"),
)

fun createOverallResultPlot(jsonData: List<SuiteResults>): Plot {
    val resultValues = ResultType.entries
    val rawData = jsonData
        .groupBy { it.executable }
        .mapValues { it.value.flatMap { it.testSuites }.flatMap { it.categories }.flatMap { it.results } }
        .map { entry ->
            entry.key to resultValues.map { resultValue -> resultValue to entry.value.count { it.result == resultValue } }
        }
        .sortedBy { it.first }

    val resultData = mapOf(
        "executable" to rawData.flatMap { pair -> List(pair.second.size) { pair.first } }.map { fixExecutableName(it) },
        "result" to rawData.flatMap { it.second.map { it.first } },
        "amount" to rawData.flatMap { it.second.map { it.second } }
    )

    return resultData.plot {
        groupBy("executable") {
            bars {
                x("executable") {
                    axis.name = "Executable"
                }
                y("amount") {
                    axis.name = "Count"
                }
                fillColor("result") {
                    legend.name = "Result"
                    scale = createColorScale()
                }
                position = Position.stack()
            }
        }
        layout {
            title = "Results by result type"
        }
    }
}

fun createCategoryAverageTimePlot(jsonData: List<SuiteResults>): Plot {
    val categoryTimeSizeRatio = jsonData.map {
        it.executable to it.testSuites
            .flatMap { suite -> suite.categories.map { "${suite.suiteName}-${it.name}" to (it.actualTime.toDouble() / 1000) / it.results.size } }
            .sortedBy { it.first }
    }
    val categoryTimeSizeRatioData = mapOf(
        "category" to categoryTimeSizeRatio.flatMap { it.second.map { it.first } },
        "ratio" to categoryTimeSizeRatio.flatMap { it.second.map { it.second } },
        "group" to categoryTimeSizeRatio.flatMap { entry -> List(entry.second.size) { entry.first } }
    )

    return categoryTimeSizeRatioData.plot {
        groupBy("group") {
            line {
                x("category") {
                    axis.name = "Test Category"
                }
                y("ratio") {
                    axis.name = "Average time per file"
                    axis.breaks(format = "{d} s")
                }
                color("group") {
                    scale = continuousColorViridis()
                    legend.name = "Executable"
                }
            }
        }

        layout {
            title = "Average time per file per category"
            subtitle = "Time in s / number of tests"
            size = 2500 to 1000
        }
    }
}

fun createSuiteResultsPlot(jsonData: List<SuiteResults>, summaries: DataFrame<ResultSummary>): PlotGrid {
    val testSuites = computeSuiteNames(jsonData)
    val resultValues = ResultType.entries

    val plots = mutableListOf<Plot>()
    for (testSuite in testSuites) {
        val rawResultData = jsonData
            .groupBy { it.executable }
            .mapValues { it.value.flatMap { it.testSuites }.flatMap { it.categories }.flatMap { it.results }.filter { it.file.startsWith(testSuite) } }
            .map { entry ->
                entry.key to resultValues.map { resultValue -> resultValue to entry.value.count { it.result == resultValue } }
            }
            .sortedBy { it.first }
        val resultData = mapOf(
            "executable" to rawResultData.flatMap { pair -> List(pair.second.size) { pair.first } }.map { fixExecutableName(it) },
            "result" to rawResultData.flatMap { it.second.map { it.first } },
            "amount" to rawResultData.flatMap { it.second.map { it.second } }
        )

        val divergingCount = countDivergingResult(jsonData, summaries, testSuite)
        val totalResults = summaries.count { testfile.startsWith(testSuite) }
        val divergingPercentage = String.format(Locale.ENGLISH, "%.2f", (divergingCount.toDouble() / totalResults) * 100)

        val suitePlot = plot(resultData) {
            groupBy("executable") {
                bars {
                    x("executable") {
                        axis.name = "Executable"
                    }
                    y("amount") {
                        axis.name = "Count"
                    }
                    fillColor("result") {
                        legend.name = "Result"
                        scale = createColorScale()                    }
                    position = Position.stack()
                }
            }
            layout {
                title = "${fixExecutableName(testSuite)} tests"
                subtitle = "$totalResults total, $divergingCount diverging ($divergingPercentage%)"
            }
        }

        suitePlot.save("suite-results-$testSuite.png", scale = 2, path = "report-output", dpi = 300)
        plots.add(suitePlot)
    }

    return plotGrid(plots, 2)
}

private fun countDivergingResult(jsonData: List<SuiteResults>, summaries: DataFrame<ResultSummary>, testSuite: String): Int {
    val resultValues = ResultType.entries
    val divergingResults = summaries.findDivergingResults(true)
    val suiteDivergingResults = divergingResults.filter { testfile.startsWith(testSuite) }.map { testfile }

    val rawResultData = jsonData
        .groupBy { it.executable }
        .mapValues { executableResults ->
            executableResults.value.flatMap { it.testSuites }.flatMap { it.categories }.flatMap { it.results }.filter { fileResult -> fileResult.file in suiteDivergingResults }
        }
        .map { entry ->
            entry.key to resultValues.map { resultValue -> resultValue to entry.value.count { it.result == resultValue } }
        }

    val divergingResultsCount = rawResultData.first().second.sumOf { it.second }
    return divergingResultsCount
}

fun createDivergingSuiteResultsPlot(jsonData: List<SuiteResults>, summaries: DataFrame<ResultSummary>, includeDialyzer: Boolean = true): PlotGrid {
    val divergingResults = summaries.findDivergingResults(includeDialyzer)
    val testSuites = computeSuiteNames(jsonData)
    val resultValues = ResultType.entries

    val plots = mutableListOf<Plot>()
    for (testSuite in testSuites) {
        val suiteDivergingResults = divergingResults.filter { testfile.startsWith(testSuite) }.map { testfile }
        val rawResultData = jsonData
            .groupBy { it.executable }
            .filterKeys { includeDialyzer || it != "dialyzer" }
            .mapValues { executableResults ->
                executableResults.value.flatMap { it.testSuites }.flatMap { it.categories }.flatMap { it.results }.filter { fileResult -> fileResult.file in suiteDivergingResults }
            }
            .map { entry ->
                entry.key to resultValues.map { resultValue -> resultValue to entry.value.count { it.result == resultValue } }
            }
            .sortedBy { it.first }

        val divergingResultData = mapOf(
            "executable" to rawResultData.flatMap { pair -> List(pair.second.size) { pair.first } }.map { fixExecutableName(it) },
            "result" to rawResultData.flatMap { it.second.map { it.first } },
            "amount" to rawResultData.flatMap { it.second.map { it.second } }
        )

        val divergingResultsCount = rawResultData.first().second.sumOf { it.second }
        val totalResults = summaries.count { testfile.startsWith(testSuite) }
        val divergingPercentage = String.format(Locale.ENGLISH, "%.2f", (divergingResultsCount.toDouble() / totalResults) * 100)

        val suitePlot = divergingResultData.plot {
            groupBy("executable") {
                bars {
                    x("executable") {
                        axis.name = "Executable"
                    }
                    y("amount") {
                        axis.name = "Count"
                    }
                    fillColor("result") {
                        legend.name = "Result"
                        scale = createColorScale()                    }
                    position = Position.stack()
                }
            }
            layout {
                title = "Diverging results (${fixExecutableName(testSuite)} tests)"
                subtitle = "$divergingResultsCount diverging, $totalResults total ($divergingPercentage%)"
            }
        }

        val dialyzerInclusion = if (includeDialyzer) "" else "-no-dialyzer"
        suitePlot.save("diverging-results$dialyzerInclusion-$testSuite.png", scale = 2, path = "report-output", dpi = 300)

        plots.add(suitePlot)
    }

    return plotGrid(plots, 2)
}

private fun fixExecutableName(testSuite: String): String {
    when(testSuite.lowercase()) {
        "dialyzer" -> return "Dialyzer"
        "eqwalizer" -> return "eqWAlizer"
        "etylizer" -> return "Etylizer"
        "gradualizer" -> return "Gradualizer"
        else -> return testSuite
    }
}
