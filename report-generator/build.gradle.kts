plugins {
    kotlin("jvm") version "1.9.23"
    id("org.jetbrains.kotlinx.dataframe") version "0.13.1"
    kotlin("plugin.serialization") version "1.9.23"
}

group = "io.github.etylizer.testrunner"
version = "1.0"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation(kotlin("test"))

    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.6.3")
    implementation("org.jetbrains.kotlinx:kandy-lets-plot:0.6.0")
    implementation("org.jetbrains.kotlinx:dataframe:0.13.1")
}

tasks.test {
    useJUnitPlatform()
}
