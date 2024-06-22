package io.github.etylizer.testrunner.reportgenerator.data

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
enum class ResultType {
    @SerialName("pass")
    Pass,

    @SerialName("fail")
    Fail,

    @SerialName("both")
    Both,

    @SerialName("timeout")
    Timeout,

    @SerialName("crash_memory")
    CrashMemory,

    @SerialName("unknown")
    Unknown,

    @SerialName("not_implemented")
    NotImplemented
}
