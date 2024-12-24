package io.github.etylizer.testrunner.reportgenerator.data

import org.jetbrains.kotlinx.dataframe.annotations.DataSchema

@DataSchema
interface ResultSummary {
    val testfile: String
    val dialyzer: ResultType
    val eqwalizer: ResultType
    val etylizer: ResultType
    val gradualizer: ResultType
}