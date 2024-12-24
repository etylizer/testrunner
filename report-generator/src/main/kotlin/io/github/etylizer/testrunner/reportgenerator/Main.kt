package io.github.etylizer.testrunner.reportgenerator

import io.github.etylizer.testrunner.reportgenerator.data.*
import kotlinx.serialization.json.Json
import org.jetbrains.kotlinx.dataframe.DataFrame
import org.jetbrains.kotlinx.dataframe.api.*
import org.jetbrains.kotlinx.dataframe.io.DisplayConfiguration
import org.jetbrains.kotlinx.dataframe.io.toCsv
import org.jetbrains.kotlinx.dataframe.io.toStandaloneHTML
import org.jetbrains.kotlinx.kandy.letsplot.export.save
import java.io.File
import kotlin.io.path.Path
import kotlin.io.path.isDirectory

val json = Json {
    ignoreUnknownKeys = true
}

fun main(args: Array<String>) {
    require(args.isNotEmpty())
    val resultsFileName = args[0]
    val outputDirectory = "report-output"
    File(outputDirectory).mkdirs()

    val jsonData = readResults(resultsFileName)
    val summaryDf = generateBasicDataframe(jsonData).also { summaryDf ->
        File("$outputDirectory/summary-df.csv").writeText(summaryDf.toCsv())
        summaryDf.toStandaloneHTML(DisplayConfiguration(rowsLimit = null, cellContentLimit = 512))
            .writeHTML(File("$outputDirectory/summary-df.html"))
    }

    val overallResultPlot = createOverallResultPlot(jsonData).also { overallResultPlot ->
        overallResultPlot.save("result-data-plot.png", scale = 2, path = outputDirectory, dpi = 300)
        overallResultPlot.save("result-data-plot.html", scale = 2, path = outputDirectory)
        overallResultPlot.save("result-data-plot.svg", scale = 2, path = outputDirectory)
    }

    val categoryAverageTimePlot = createCategoryAverageTimePlot(jsonData).also { categoryAverageTimePlot ->
        categoryAverageTimePlot.save("category-average-time-plot.png", scale = 2, path = outputDirectory, dpi = 300)
        categoryAverageTimePlot.save("category-average-time-plot.html", scale = 2, path = outputDirectory)
        categoryAverageTimePlot.save("category-average-time-plot.svg", scale = 2, path = outputDirectory)
    }

    val suiteSizes = createSuiteSizeTable(jsonData).also { suiteSizes ->
        File("$outputDirectory/suite-sizes.csv").writeText(suiteSizes.toCsv())
        suiteSizes.toStandaloneHTML(DisplayConfiguration(rowsLimit = null))
            .writeHTML(File("$outputDirectory/suite-sizes.html"))
    }

    val suiteResults = createSuiteResultsPlot(jsonData, summaryDf).also { suiteResults ->
        suiteResults.save("suite-results.png", scale = 2, path = outputDirectory, dpi = 300)
        suiteResults.save("suite-results.html", scale = 2, path = outputDirectory)
        suiteResults.save("suite-results.svg", scale = 2, path = outputDirectory)
    }

    val divergingSuiteResults = createDivergingSuiteResultsPlot(jsonData, summaryDf).also { divergingSuiteResults ->
        divergingSuiteResults.save("diverging-results.png", scale = 2, path = outputDirectory, dpi = 300)
        divergingSuiteResults.save("diverging-results.html", scale = 2, path = outputDirectory)
        divergingSuiteResults.save("diverging-results.svg", scale = 2, path = outputDirectory)
    }

    val divergingSuiteResultsNoDialyzer = createDivergingSuiteResultsPlot(jsonData, summaryDf, false).also { divergingSuiteResultsNoDialyzer ->
        divergingSuiteResultsNoDialyzer.save("diverging-results-no-dialyzer.png", scale = 2, path = outputDirectory, dpi = 300)
        divergingSuiteResultsNoDialyzer.save("diverging-results-no-dialyzer.html", scale = 2, path = outputDirectory)
        divergingSuiteResultsNoDialyzer.save("diverging-results-no-dialyzer.svg", scale = 2, path = outputDirectory)
    }

}

private fun generateBasicDataframe(jsonData: List<SuiteResults>): DataFrame<ResultSummary> {
    val resultsList = jsonData
        .map {
            it.executable to it.testSuites.flatMap { suite -> suite.categories }
                .flatMap { category -> category.results }
        }
        .flatMap { pair -> pair.second.map { pair.first to it } }
        .groupBy { it.second.file }
        .mapValues { it.value.sortedBy { it.first }.map { it.first to it.second.result } }
        .map { listOf(it.key, *(it.value.sortedBy { result -> result.first }.map { it.second }.toTypedArray())) }

    val suiteNames = computeSuiteNames(jsonData)
    return dataFrameOf("testfile", *suiteNames.toTypedArray())(
        *resultsList.flatten().toTypedArray()
    ).cast<ResultSummary>(true).sortBy { testfile }
}

fun computeSuiteNames(jsonData: List<SuiteResults>) = jsonData.first().testSuites
    .map { it.suiteName }
    .map { it.split('-').firstOrNull() ?: it }
    .sorted()

private fun readResults(path: String): List<SuiteResults> {
    val file = File(path)
    return if (file.isDirectory) {
        println("Reading result files from directory")
        val resultFiles = file.listFiles()!!.filter { it.isFile && it.extension == "json" }
        resultFiles.flatMap { json.decodeFromString<List<SuiteResults>>(it.readText()) }
    } else {
        println("Reading combined results from single file")
        json.decodeFromString<List<SuiteResults>>(file.readText())
    }
}
