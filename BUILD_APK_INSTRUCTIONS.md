# Instrucciones para Compilar Quiz Game APK

## Descripción
Este documento proporciona instrucciones paso a paso para compilar el APK de Quiz Game desde el código fuente.

## Versión
- Quiz Game v1.0.0-stable
- Versión APK: 1.0.0
- Compilación: 1

## Requisitos Previos

### 1. Instalar Android SDK
Descarga e instala el Android SDK desde: https://developer.android.com/studio/install

### 2. Instalar Java Development Kit (JDK)
Descarga e instala JDK 11 o superior desde: https://www.oracle.com/java/technologies/javase-jdk11-downloads.html

Alternativa (OpenJDK):
```bash
# En Ubuntu/Debian
sudo apt-get install openjdk-11-jdk

# En macOS con Homebrew
brew install openjdk@11
```

### 3. Instalar Gradle (Opcional)
El proyecto incluye Gradle Wrapper, así que no necesitas instalarlo globalmente.

---

## Método 1: Usando Android Studio (Recomendado)

### Pasos:

1. **Descargar e instalar Android Studio**
   - Visita: https://developer.android.com/studio
   - Descarga e instala para tu sistema operativo

2. **Abrir el proyecto**
   - Abre Android Studio
   - Selecciona: File → Open
   - Navega a la carpeta `QuizGameAndroid`
   - Haz clic en "Open"

3. **Esperar sincronización**
   - Android Studio descargará automáticamente Gradle y dependencias
   - Espera a que termine (puede tomar 5-10 minutos en la primera vez)

4. **Compilar APK**
   - En el menú superior: Build → Build Bundles / APK → Build APK(s)
   - O usa el atajo: Ctrl+B (Windows/Linux) o Cmd+B (Mac)

5. **Ubicación del APK**
   - El APK se generará en: `app/build/outputs/apk/release/app-release.apk`
   - Android Studio mostrará una notificción cuando esté completo

---

## Método 2: Usando Gradle desde Terminal

### En Linux/macOS:

```bash
# Navega al directorio del proyecto
cd QuizGameAndroid

# Dale permisos de ejecución a gradlew
chmod +x gradlew

# Compila el APK
./gradlew assembleRelease

# El APK estará en:
# app/build/outputs/apk/release/app-release.apk
```

### En Windows (PowerShell o CMD):

```bash
# Navega al directorio del proyecto
cd QuizGameAndroid

# Compila el APK
gradlew.bat assembleRelease

# El APK estará en:
# app\build\outputs\apk\release\app-release.apk
```

---

## Método 3: Usando Gradle instalado globalmente

```bash
cd QuizGameAndroid
gradle clean assembleRelease
```

---

## Solución de Problemas

### Error: "Android SDK not found"
**Solución:**
- Asegúrate de haber descargado e instalado Android SDK
- En Windows/Mac: Abre Android Studio, ve a Tools → SDK Manager
- En Linux: Configura la variable de entorno:
  ```bash
  export ANDROID_SDK_ROOT=/path/to/android-sdk
  export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin
  ```

### Error: "Java not found" o "Wrong Java version"
**Solución:**
- Instala JDK 11 o superior
- Verifica: `java -version`
- En Windows: Configura JAVA_HOME en las variables de entorno
- En Linux/Mac:
  ```bash
  export JAVA_HOME=/path/to/jdk
  export PATH=$JAVA_HOME/bin:$PATH
  ```

### Error: "Gradle wrapper not found"
**Solución:**
- Descarga el Gradle Wrapper:
  ```bash
  gradle wrapper --gradle-version 7.4.2
  ```

### Error: "No NDK found"
**Solución:**
- Este proyecto no requiere NDK, ignora esta advertencia

---

## Información del APK Generado

- **Nombre del archivo**: `app-release.apk`
- **Tamaño aproximado**: 3-5 MB
- **API mínima**: Android 5.0 (API 21)
- **API objetivo**: Android 13 (API 33)
- **Firma**: Sin firmar (Necesitas firmarla para publicar en Play Store)

### Firmar el APK

Para instalar en dispositivos o publicar en Play Store, necesitas firmar el APK:

```bash
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 \
  -keystore my-release-key.jks \
  app-release.apk alias_name

# Optimizar (zipalign)
zipalign -v 4 app-release.apk app-release-aligned.apk
```

---

## Características de la App

✓ Juego estilo Mario Bros con plataformas
✓ 2 niveles con dificultad progresiva
✓ Sistema de quiz interactivo
✓ Música de fondo (song.ogg)
✓ Efectos de sonido:
  - jump.ogg (saltar)
  - points.ogg (recoger monedas)
  - lives.ogg (perder vida)
  - extra.ogg (bonificación de vida extra)
✓ Sistema de puntuación y vidas
✓ Bonificación de vida extra a los 30 puntos
✓ Interfaz responsive para móviles y tablets
✓ Controles táctiles optimizados

---

## Soporte

Si encuentras problemas:
1. Verifica que tienes las versiones correctas de Java y Android SDK
2. Intenta limpiar el proyecto: `./gradlew clean`
3. Elimina la carpeta `.gradle` y `build/` y vuelve a compilar
4. Consulta los logs en Android Studio: Build → Make Project

---

## Próximos Pasos

1. **Compilar el APK** usando uno de los métodos anteriores
2. **Instalar en dispositivo**: `adb install app-release.apk`
3. **Probar en emulador**: Android Studio → Run → Select device
4. **Publicar en Play Store**: (Requiere cuenta de desarrollador)

---

Última actualización: 10 de Noviembre de 2025
Versión: 1.0.0-stable
