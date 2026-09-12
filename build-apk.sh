#!/usr/bin/env bash
set -e

echo "=========================================="
echo " Building Sindhi AI Keyboard (Android APK)"
echo "=========================================="

if ! command -v java &> /dev/null; then
    echo "Error: Java 17+ is required. Please install OpenJDK 17."
    exit 1
fi

chmod +x gradlew 2>/dev/null || true

if [ -f "./gradlew" ]; then
    ./gradlew assembleDebug
else
    gradle assembleDebug
fi

echo ""
echo "SUCCESS! APK generated at:"
echo "👉 app/build/outputs/apk/debug/app-debug.apk"
echo ""
echo "Transfer this APK to your Android device to install."
