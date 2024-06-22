plugins {
    kotlin("jvm") version "1.9.22"
    id("org.jetbrains.kotlinx.dataframe") version "0.13.1"
    kotlin("plugin.serialization") version "1.9.22"
    id("io.github.goooler.shadow") version "8.1.7"
    application
}

group = "io.github.etylizer.testrunner"
version = "1.0"

application {
    mainClass.set("io.github.etylizer.testrunner.reportgenerator.MainKt")
}

repositories {
    mavenCentral()
}

dependencies {
    testImplementation(kotlin("test"))

    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.6.3")
    implementation("org.jetbrains.kotlinx:kandy-lets-plot:0.6.0")
    implementation("org.jetbrains.kotlinx:dataframe:0.13.1")
    implementation("org.slf4j:slf4j-simple:2.0.13")
}

tasks {
    test {
        useJUnitPlatform()
    }

    distZip {
        enabled = false
    }

    distTar {
        enabled = false
    }

    jar {
        enabled = false
        archiveFileName.set("${archiveBaseName.get()}-${archiveClassifier.get()}.${archiveExtension.get()}")
    }

    shadowJar {
        archiveFileName.set("${archiveBaseName.get()}-${archiveClassifier.get()}.${archiveExtension.get()}")
    }

    build {
        dependsOn(shadowJar)
    }
}
