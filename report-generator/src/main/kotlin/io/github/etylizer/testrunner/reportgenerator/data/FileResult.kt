package io.github.etylizer.testrunner.reportgenerator.data

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FileResult(
    val time: Int,
    val file: String,
    val result: ResultType,
    @SerialName("expected_result") val expectedResult: ResultType,
    @SerialName("raw_result") val rawResult: ResultType,
)
