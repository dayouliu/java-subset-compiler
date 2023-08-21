import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    kotlin("jvm") version "1.7.21"
    id("org.xbib.gradle.plugin.jflex") version "1.7.0"
    id("cup.gradle.cup-gradle-plugin") version "2.0"
    application
    java
}

group = "org.example"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation(kotlin("test"))
}

tasks.test {
    useJUnitPlatform()
    dependsOn(tasks.cupCompile)
    dependsOn(tasks.generateJflex)
}

tasks.compileTestKotlin{
    dependsOn(tasks.cupCompile)
    dependsOn(tasks.generateTestJflex)
}

tasks.withType<KotlinCompile> {
    kotlinOptions.jvmTarget = "1.8"
    dependsOn(tasks.cupCompile)
    dependsOn(tasks.generateJflex)
}

application {
    mainClass.set("MainKt")
}

sourceSets {
    main {
        jflex {
            srcDirs(listOf("src/main/jflex"))
        }
        java {
            srcDirs(listOf("$buildDir/generated/sources/main"))
        }
    }
}

cup {
    generateDir = "$buildDir/generated/sources/main/cup"
    setArgs("-dump_states", "-nowarn")
}
