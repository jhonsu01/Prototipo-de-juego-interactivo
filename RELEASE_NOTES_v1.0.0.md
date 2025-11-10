# Quiz Game v1.0.0-stable Release

**Fecha de Lanzamiento:** 10 de Noviembre de 2025
**Versión:** 1.0.0-stable
**Estado:** ✅ Estable

---

## 📱 Descripción General

Quiz Game es un juego educativo estilo Mario Bros con un sistema de quiz interactivo. Incluye dos niveles progresivamente más difíciles, mecánicas de plataforma, sistemas de puntuación, y audio envolvente.

---

## ✨ Características Principales

### Gameplay
- ✓ Juego de plataformas estilo Super Mario Bros
- ✓ 2 niveles: "El Castillo de Peach" y "La Fortaleza de Bowser"
- ✓ Mecánica de salto y movimiento fluida
- ✓ Sistema de colisión preciso con plataformas

### Sistema de Quiz
- ✓ 2 preguntas por nivel
- ✓ Respuestas múltiples para avanzar
- ✓ Preguntas educativas en español
- ✓ Progresión bloqueada (debe responder correctamente)

### Sistema de Puntuación
- ✓ Recopilar monedas para obtener puntos (10 puntos por moneda)
- ✓ Sistema de vidas (3 vidas iniciales)
- ✓ Perder vida al contactar con enemigos
- ✓ **Nuevo:** Bonificación de vida extra a los 30 puntos (cuesta 30 puntos)

### Elementos Visuales
- ✓ Spritesheet personalizado (personaje, enemigos)
- ✓ Fondo paralax en movimiento
- ✓ Plataformas con alturas variables
- ✓ Obstáculos de lava con animación de pulsación
- ✓ Interfaz responsive para móviles y escritorio

### Sistema de Audio
- ✓ Música de fondo ambiental (song.ogg)
- ✓ Efecto de sonido de salto (jump.ogg)
- ✓ Efecto de recolección de puntos (points.ogg)
- ✓ Efecto de perder vida (lives.ogg)
- ✓ Efecto de bonificación (extra.ogg) - **NUEVO**
- ✓ Botón de silencio con persistencia

### Controles
- ✓ Controles de teclado (flecha izq/der, espacio para saltar)
- ✓ Controles táctiles optimizados para móvil (botones virtuales)
- ✓ Botón de salto grande y fácil de presionar

### Responsividad
- ✓ Diseño completamente responsive
- ✓ Optimizado para móviles (320px - 480px)
- ✓ Optimizado para tablets (768px - 1024px)
- ✓ Compatible con escritorio (1920px+)
- ✓ Ajuste automático de fuentes según tamaño de pantalla

---

## 🔧 Cambios en esta Versión

### Nuevas Características (v1.0.0)
1. **Sistema de Vida Extra**
   - Cuando el jugador acumula 30 puntos, recibe 1 vida extra
   - Se reproducen 30 puntos del score
   - Se reproduce el sonido extra.ogg
   - Máximo 1 bonificación por nivel

2. **Proyecto Android Completo**
   - Estructura Gradle lista para compilar
   - MainActivity con WebView integrado
   - Manifiestos y configuraciones necesarias
   - Scripts de compilación automática

### Mejoras
- Deducción de puntos correcta cuando se otorga vida extra
- Mejor documentación del proyecto
- Instrucciones detalladas para compilación

---

## 📦 Archivos Incluidos

### Para el Desarrollo Web
- **quiz_game.html** - Aplicación web completa (1940+ líneas)
- **fondo.jpg** - Imagen de fondo del juego
- **personaje.png** - Sprite del personaje
- **villano.png** - Sprite de enemigos
- **coverintro.jpg** - Imagen de portada/menú
- **song.ogg** - Música de fondo
- **jump.ogg** - Efecto de salto
- **points.ogg** - Efecto de monedas
- **lives.ogg** - Efecto de muerte
- **extra.ogg** - Efecto de vida extra

### Para Android
- **QuizGameAndroid/** - Proyecto Android completo
  - `app/src/main/AndroidManifest.xml` - Configuración
  - `app/src/main/java/MainActivity.java` - Actividad principal
  - `app/src/main/assets/index.html` - App web empaquetada
  - `build.gradle` - Configuración de compilación
  - Recursos: layouts, strings, styles

### Documentación
- **BUILD_APK_INSTRUCTIONS.md** - Guía paso a paso para compilar APK
- **QuizGameAndroid/README.md** - Información del proyecto Android
- **RELEASE_NOTES_v1.0.0.md** - Este archivo

---

## 📱 Instalación en Android

### Opción 1: Compilar desde Código Fuente (Recomendado)

```bash
cd QuizGameAndroid
./gradlew assembleRelease
# APK en: app/build/outputs/apk/release/app-release.apk
```

Requisitos:
- Android SDK API 33+
- Java JDK 11+
- Gradle 7.4.2+ (incluido en el proyecto)

Ver `BUILD_APK_INSTRUCTIONS.md` para instrucciones detalladas.

### Opción 2: Usar Android Studio

1. Abre Android Studio
2. File → Open → Selecciona `QuizGameAndroid`
3. Espera sincronización de Gradle
4. Build → Build APK(s)

---

## 🎮 Cómo Jugar

1. **Selecciona tu nombre** en la pantalla de inicio
2. **Lee las instrucciones** de los controles
3. **Responde las preguntas de quiz** para avanzar de nivel
4. **Salta entre plataformas** recolectando monedas
5. **Evita enemigos y lava** para no perder vidas
6. **Acumula 30 puntos** para ganar una vida extra
7. **Alcanza el castillo** al final del nivel para ganar

### Controles

**Computadora:**
- ⬅️ Flecha Izquierda = Mover Izquierda
- ➡️ Flecha Derecha = Mover Derecha
- ⬆️ Espacio = Saltar

**Móvil:**
- ⬅️ Botón Izquierda = Mover Izquierda
- ➡️ Botón Derecha = Mover Derecha
- 🚀 Botón Grande = Saltar

---

## 🐛 Correcciones de Bugs

- Fijo: Movimiento limitado al ancho de la pantalla (ahora usa gameWorld completo)
- Fijo: Imagen de fondo con zoom (ahora escala correctamente)
- Fijo: Enemigos no aparecían (ahora posicionados en plataformas)
- Fijo: Enemigos caían del nivel (ahora solo movimiento horizontal)
- Fijo: Botón de sonido superpuesto (reposicionado)
- Fijo: Texto de quiz muy grande en móvil (escalado responsivamente)

---

## 📊 Especificaciones Técnicas

### Desarrollo Web
- **HTML5** - Estructura semántica
- **CSS3** - Estilos responsive con media queries
- **JavaScript (Vanilla)** - Sin dependencias externas
- **Tamaño:** ~80 KB (sin recursos)

### Android
- **Lenguaje:** Java 11
- **API Mínima:** Android 5.0 (API 21)
- **API Objetivo:** Android 13 (API 33)
- **Arquitectura:** Todas (ARM, x86, x86_64)
- **Tamaño APK:** ~3-5 MB
- **Componente:** WebView + Assets locales

---

## ✅ Testing

- ✓ Probado en navegadores modernos (Chrome, Firefox, Safari, Edge)
- ✓ Probado en móviles (iOS Safari, Chrome Android)
- ✓ Probado en tablets (iPad, tablets Android)
- ✓ Responsive design: 320px - 1920px+
- ✓ Audio funciona en todos los navegadores compatibles
- ✓ Controles táctiles funcionales en dispositivos móviles

---

## 🚀 Próximas Mejoras Planeadas

- [ ] Más niveles
- [ ] Sistema de ranking/leaderboard
- [ ] Animaciones de personaje mejoradas
- [ ] Efectos visuales adicionales
- [ ] Múltiples idiomas
- [ ] Publicación en Google Play Store
- [ ] Publicación en Apple App Store

---

## 📄 Licencia

Este proyecto fue creado como un prototipo educativo.

---

## 👨‍💻 Desarrollo

**Herramientas Utilizadas:**
- Visual Studio Code
- Git/GitHub
- Gradle
- Android Studio (opcional)

**Compatibilidad:**
- ✓ Windows
- ✓ macOS
- ✓ Linux
- ✓ iOS (vía navegador)
- ✓ Android

---

## 📞 Soporte

Para problemas durante la compilación, consulta:
1. `BUILD_APK_INSTRUCTIONS.md` - Guía de compilación completa
2. `QuizGameAndroid/README.md` - Información del proyecto Android
3. Variables de entorno: `ANDROID_SDK_ROOT`, `JAVA_HOME`

---

## 📝 Notas de Versión Anterior

### v0.9.0 (Pre-release)
- Versión inicial del juego
- Sistema base de plataformas y quiz
- Audio básico
- Controles iniciales

---

**Versión:** 1.0.0-stable
**Fecha:** 10 de Noviembre de 2025
**Estado:** ✅ Listo para Producción
