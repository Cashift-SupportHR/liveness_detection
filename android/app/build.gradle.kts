plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.cashift"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
        isCoreLibraryDesugaringEnabled = true
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.cashift"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = 24
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        multiDexEnabled = true
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

val cameraxVersion = "1.3.4"       // or "1.4.2" if you upgrade EVERYTHING

// -------------------------------------------------------------
// ❷ Force every configuration to use that exact version
// -------------------------------------------------------------
configurations.all {
    resolutionStrategy {
        force(
            "androidx.camera:camera-core:$cameraxVersion",
            "androidx.camera:camera-camera2:$cameraxVersion",
            "androidx.camera:camera-lifecycle:$cameraxVersion",
            "androidx.camera:camera-video:$cameraxVersion",
            "androidx.camera:camera-view:$cameraxVersion",
            "androidx.camera:camera-extensions:$cameraxVersion"
        )
    }
}

// -------------------------------------------------------------
// ❸ Explicitly pull the same coordinates into this module
// -------------------------------------------------------------
dependencies {
    implementation("androidx.camera:camera-core:$cameraxVersion")
    implementation("androidx.camera:camera-camera2:$cameraxVersion")
    implementation("androidx.camera:camera-lifecycle:$cameraxVersion")
    implementation("androidx.camera:camera-video:$cameraxVersion")
    implementation("androidx.camera:camera-view:$cameraxVersion")
    implementation("androidx.camera:camera-extensions:$cameraxVersion")

    // ─── NEW: runtime that L8 needs when desugaring ───────────
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
    // 2.1.4 is the version the plugin docs show; 2.1.5 is the latest preview. :contentReference[oaicite:0]{index=0}
}