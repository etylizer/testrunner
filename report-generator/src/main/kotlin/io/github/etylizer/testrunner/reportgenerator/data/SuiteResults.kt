package io.github.etylizer.testrunner.reportgenerator.data

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class SuiteResults(val executable: String, @SerialName("test_suites") val testSuites: List<TestSuite>)

