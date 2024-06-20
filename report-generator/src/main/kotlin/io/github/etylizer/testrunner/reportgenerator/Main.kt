package io.github.etylizer.testrunner.reportgenerator

import io.github.etylizer.testrunner.reportgenerator.data.SuiteResults
import kotlinx.serialization.json.Json
import org.jetbrains.kotlinx.kandy.letsplot.export.save
import java.io.File

val json = Json {
    ignoreUnknownKeys = true
}

fun main(args: Array<String>) {
    require(args.isNotEmpty())
    val resultsFileName = args[0]

    val jsonData = json.decodeFromString<List<SuiteResults>>(File(resultsFileName).readText())

    val overallResultPlot = createOverallResultPlot(jsonData)
    overallResultPlot.save("result-data-plot.png", scale = 2)
    overallResultPlot.save("result-data-plot.html", scale = 2)

    val categoryAverageTimePlot = createCategoryAverageTimePlot(jsonData)
    categoryAverageTimePlot.save("category-average-time-plot.png", scale = 2)
    categoryAverageTimePlot.save("category-average-time-plot.html", scale = 2)

    val suiteSizes = createSuiteSizeTable(jsonData)
}
