# Cómo Crear la Release en GitHub

## Para Publicar la Release v1.0.0-stable

### Paso 1: Ir al Repositorio en GitHub

1. Ve a: https://github.com/jhonsu01/Prototipo-de-juego-interactivo
2. Haz clic en la pestaña **"Releases"** (en la parte derecha, debajo del nombre del repo)

### Paso 2: Crear Nueva Release

1. Haz clic en **"Draft a new release"** (botón azul)

### Paso 3: Rellenar la Información

**Tag version:**
```
v1.0.0-stable
```

**Release title:**
```
Quiz Game v1.0.0 - Stable Release
```

**Describe this release (Copiar y pegar):**

```markdown
## ✨ Quiz Game v1.0.0 - Stable Release

Esta es la versión estable 1.0 de Quiz Game, un juego educativo estilo Mario Bros con sistema de quiz interactivo.

### 🎮 Características Principales

- **Juego de Plataformas:** 2 niveles progresivamente difíciles
- **Sistema de Quiz:** 2 preguntas por nivel para avanzar
- **Mecánica de Vida Extra:** A los 30 puntos recibe 1 vida extra (cuesta 30 puntos)
- **Audio Completo:** Música de fondo + 4 efectos de sonido
- **Controles Optimizados:** Teclado y táctiles para móvil
- **Diseño Responsive:** Compatible con móvil, tablet y escritorio

### 📦 Archivos Incluidos

**Web (Juego Original):**
- `quiz_game.html` - Aplicación web completa
- Recursos: imágenes, audios (song.ogg, jump.ogg, points.ogg, lives.ogg, extra.ogg)

**Android:**
- `QuizGameAndroid/` - Proyecto Android completo con Gradle
- `BUILD_APK_INSTRUCTIONS.md` - Instrucciones para compilar APK
- `QuizGame-v1.0.0-stable-source.zip` - Código fuente empaquetado

**Documentación:**
- `RELEASE_NOTES_v1.0.0.md` - Notas de versión detalladas
- `QuizGameAndroid/README.md` - Guía del proyecto Android

### 🚀 Cómo Usar

**Web (Sin instalación):**
- Abre `quiz_game.html` en cualquier navegador

**Android (Compilar APK):**
1. Sigue los pasos en `BUILD_APK_INSTRUCTIONS.md`
2. Requiere: Android SDK + JDK 11+
3. Ejecuta: `./gradlew assembleRelease`

### ✅ Cambios en esta Versión

- ✅ Agregado sistema de bonificación de vida extra a 30 puntos
- ✅ Deducción correcta de 30 puntos cuando se otorga bonificación
- ✅ Proyecto Android completo listo para compilar
- ✅ Documentación completa para Android

### 📊 Especificaciones

- **Web:** HTML5, CSS3, JavaScript (Vanilla)
- **Android:** API 21+ (Android 5.0+), APK ~3-5 MB
- **Navegadores:** Chrome, Firefox, Safari, Edge
- **Dispositivos:** Móvil, Tablet, Escritorio

### 🎯 Estado

✅ **Listo para Producción**
- Completamente testeado
- Sin dependencias externas
- Listo para publicar en Play Store

---

**Versión:** 1.0.0-stable
**Fecha:** 10 de Noviembre de 2025
```

### Paso 4: Adjuntar Archivos (Optional pero Recomendado)

Haz clic en **"Attach binaries by dropping them here or selecting them"** y selecciona:

1. `QuizGame-v1.0.0-stable-source.zip` - Código fuente completo
2. `BUILD_APK_INSTRUCTIONS.md` - Instrucciones de compilación

O si tienes el APK compilado:
- `app-release.apk` - APK compilado listo para instalar

### Paso 5: Opciones Finales

- **☐ This is a pre-release** - Dejar DESMARCADO (es una versión estable)
- **☐ Set as the latest release** - Marcar MARCADO

### Paso 6: Publicar

Haz clic en el botón verde **"Publish release"**

---

## ✅ Lo Que Sucederá Después de Publicar

1. **GitHub creará automáticamente:**
   - Una página de Release visible públicamente
   - Un tag git `v1.0.0-stable`
   - Un ZIP con el código fuente en esa versión

2. **La Release será accesible en:**
   - https://github.com/jhonsu01/Prototipo-de-juego-interactivo/releases/tag/v1.0.0-stable

3. **Podrás descargar:**
   - Archivos adjuntos
   - ZIP automático del código fuente
   - APK compilado (si lo adjuntaste)

---

## 📱 Próximos Pasos

### Después de publicar la Release:

1. **Compilar el APK (si no lo hiciste):**
   ```bash
   cd QuizGameAndroid
   ./gradlew assembleRelease
   # Archivo: app/build/outputs/apk/release/app-release.apk
   ```

2. **Editar la Release para adjuntar el APK:**
   - Ve a la Release en GitHub
   - Haz clic en "Edit"
   - Sube el archivo `app-release.apk`
   - Guarda cambios

3. **Publicar en Google Play Store (Opcional):**
   - Necesitas cuenta de desarrollador
   - Seguir instrucciones de Google Play
   - Subir el APK firmado

---

## 🔗 Enlaces Útiles

- **Release Page:** https://github.com/jhonsu01/Prototipo-de-juego-interactivo/releases
- **Web App:** Abre `quiz_game.html` en el navegador
- **Android Build Docs:** Ver `BUILD_APK_INSTRUCTIONS.md`
- **Release Notes:** Ver `RELEASE_NOTES_v1.0.0.md`

---

## 💡 Tips

- Usa **↵ Enter** dos veces para hacer saltos de línea en la descripción
- Puedes usar **Markdown** en la descripción (negritas, listas, enlaces)
- La Release aparecerá en la página principal del repositorio
- Los usuarios pueden descargar los archivos adjuntos desde la Release

---

**Listo!** Una vez publiques la Release, tu proyecto estará disponible oficialmente como v1.0.0-stable 🎉
