package io.github.etylizer.testrunner.reportgenerator

import io.github.etylizer.testrunner.reportgenerator.data.ResultType
import io.github.etylizer.testrunner.reportgenerator.data.SuiteResults
import org.jetbrains.kotlinx.kandy.dsl.categorical
import org.jetbrains.kotlinx.kandy.dsl.plot
import org.jetbrains.kotlinx.kandy.ir.Plot
import org.jetbrains.kotlinx.kandy.letsplot.feature.Position
import org.jetbrains.kotlinx.kandy.letsplot.feature.layout
import org.jetbrains.kotlinx.kandy.letsplot.feature.position
import org.jetbrains.kotlinx.kandy.letsplot.layers.bars
import org.jetbrains.kotlinx.kandy.letsplot.layers.line
import org.jetbrains.kotlinx.kandy.letsplot.scales.continuousColorViridis
import org.jetbrains.kotlinx.kandy.util.color.Color

fun createOverallResultPlot(jsonData: List<SuiteResults>): Plot {
    val resultValues = ResultType.entries
    val rawData = jsonData
        .groupBy { it.executable }
        .mapValues { it.value.flatMap { it.testSuites }.flatMap { it.categories }.flatMap { it.results } }
        .map { entry ->
            entry.key to resultValues.map { resultValue -> resultValue to entry.value.count { it.result == resultValue } }
        }

    val resultData = mapOf(
        "executable" to rawData.flatMap { pair -> List(pair.second.size) { pair.first } },
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
                    scale = categorical(
                        ResultType.Pass to Color.GREEN,
                        ResultType.Fail to Color.RED,
                        ResultType.NotImplemented to Color.YELLOW,
                        ResultType.Timeout to Color.PURPLE,
                        ResultType.CrashMemory to Color.BLUE,
                        ResultType.Unknown to Color.GREY
                    )
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
    val categoryTimeSizeRatio = jsonData.map { it.executable to it.testSuites.flatMap { suite -> suite.categories.map { "${suite.suiteName}-${it.name}" to (it.actualTime.toDouble() / 1000) / it.results.size } }.sortedBy { it.first } }
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
