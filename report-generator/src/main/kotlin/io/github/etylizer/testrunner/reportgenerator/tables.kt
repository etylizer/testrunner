package io.github.etylizer.testrunner.reportgenerator

import io.github.etylizer.testrunner.reportgenerator.data.SuiteResults
import org.jetbrains.kotlinx.dataframe.AnyFrame
import org.jetbrains.kotlinx.dataframe.api.dataFrameOf

fun createSuiteSizeTable(jsonData: List<SuiteResults>): AnyFrame {
    val suiteSizes = jsonData.first().testSuites.map { it.suiteName to it.categories.sumOf { it.results.size } }
    val table = dataFrameOf("Suite" to suiteSizes.map { it.first }, "Size" to suiteSizes.map { it.second })
    return table
}
