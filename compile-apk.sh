#!/bin/bash

# Script para compilar el APK de Quiz Game
# Asegúrate de tener instalado:
# - Android SDK (API 33+)
# - Java JDK 11+
# - Gradle 7.4.2+

echo "======================================"
echo "Compilando Quiz Game APK"
echo "======================================"

# Verificar Java
if ! command -v java &> /dev/null; then
    echo "Error: Java no está instalado"
    echo "Instala Java JDK 11 o superior"
    exit 1
fi

echo "Java encontrado: $(java -version 2>&1 | head -n 1)"

# Compilar en modo release
echo ""
echo "Compilando..."
chmod +x gradlew 2>/dev/null || true

if [ -f "./gradlew" ]; then
    ./gradlew clean assembleRelease
else
    gradle clean assembleRelease
fi

if [ $? -eq 0 ]; then
    APK_PATH="app/build/outputs/apk/release/app-release.apk"
    if [ -f "$APK_PATH" ]; then
        echo ""
        echo "======================================"
        echo "✓ APK compilado exitosamente!"
        echo "Ubicación: $APK_PATH"
        echo "======================================"
    else
        echo "Nota: El APK se compilará cuando ejecutes este script en tu máquina con Android SDK instalado"
    fi
else
    echo ""
    echo "Error en la compilación"
    echo "Asegúrate de tener Android SDK instalado en: $ANDROID_SDK_ROOT o configura ANDROID_HOME"
    exit 1
fi
