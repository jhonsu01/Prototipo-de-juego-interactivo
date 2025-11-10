# Quiz Game Android

Proyecto Android para la aplicación Quiz Game.

## Compilación

### Requisitos
- Android SDK (API 33+)
- Java Development Kit (JDK 11+)
- Gradle 7.4.2+

### Pasos para compilar

1. **En Linux/Mac:**
```bash
cd QuizGameAndroid
./gradlew assembleRelease
```

2. **En Windows:**
```bash
cd QuizGameAndroid
gradlew.bat assembleRelease
```

El APK generado se encontrará en: `app/build/outputs/apk/release/app-release.apk`

### Alternativa: Usar Android Studio

1. Abre Android Studio
2. Selecciona "Open an existing Android Studio project"
3. Navega a la carpeta `QuizGameAndroid`
4. Espera a que Gradle sincronice el proyecto
5. Ve a Build > Build Bundle(s) / APK(s) > Build APK(s)
6. El APK se generará automáticamente

## Características

- Quiz Game interactivo estilo Mario Bros
- Dos niveles de dificultad
- Sistema de puntos, vidas y bonificaciones
- Audio ambiental y efectos de sonido
- Interfaz completamente responsive
- Compatible con Android 5.0+ (API 21+)

## Versión

1.0.0-stable
