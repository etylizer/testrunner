package io.github.etylizer.testrunner.reportgenerator.data

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class TestCategory(
    @SerialName("category") val name: String,
    @SerialName("actual_time") val actualTime: Int,
    @SerialName("total_time") val totalTime: Int,
    val results: List<FileResult>
)
