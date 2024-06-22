package io.github.etylizer.testrunner.reportgenerator.data

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class TestSuite(@SerialName("test_suite") val suiteName: String, val categories: List<TestCategory>)
