# yes_no_app 💬

Aplicación de chat construida con Flutter, desarrollada como proyecto de práctica siguiendo un curso en video. Simula una conversación de chat con burbujas de mensaje diferenciadas por usuario.

Por ahora los mensajes son fijos (hardcodeados), tanto los míos como los de "ella". Lo mismo ocurre con el GIF de respuesta: se obtuvo un enlace fijo desde [yesno.wtf](https://yesno.wtf/#api) probado previamente en Postman, en lugar de consumir la API dinámicamente desde la app.

## ✨ Características

- **Interfaz de chat personalizada**: AppBar con foto de perfil y nombre del contacto, imitando el diseño de apps de mensajería conocidas.
- **Burbujas de mensaje diferenciadas**: alineación, color y forma distintos según quién envía el mensaje (usuario vs. contacto), usando el tema de colores definido en la app.
- **Integración con API externa**: las respuestas del contacto incluyen un GIF obtenido desde la API pública de yesno.wtf.
- **Estado de carga**: mensaje/placeholder mientras la imagen de la respuesta aún no termina de cargar.
- **Caja de texto funcional**: entrada de mensajes con manejo de foco de teclado (`FocusNode`), envío mediante el botón o la tecla "done", y limpieza automática del campo tras enviar.

## 🛠️ Tecnologías

- **Flutter / Dart**
- **API pública**: [yesno.wtf](https://yesno.wtf/#api) (probada previamente con Postman para explorar la ruta de respuesta)

## 📋 Bitácora de desarrollo

Registro de lo realizado en cada etapa del curso:

1. **Inicialización de la app** — Creación del botón inicial del proyecto.
2. **Tema de la aplicación** — Clase para centralizar la personalización de colores del tema.
3. **AppBar** — Foto de perfil y título con el nombre de la persona del chat.
4. **Área de mensajes** — `ListView` como widget contenedor para futuras burbujas de mensaje.
5. **Burbujas de chat (usuario)** — Corrección de organización de archivos; diseño de burbujas alineadas a la izquierda, con bordes redondeados, padding y color primario del tema.
6. **Burbujas de chat (contacto)** — Burbujas con color secundario alineadas a la izquierda; integración de un widget de imagen conectado a la API de yesno.wtf para mostrar un GIF aleatorio como respuesta.
7. **Estado de carga de imagen** — Mensaje previo mostrado mientras la imagen de la respuesta aún no ha cargado.
8. **Caja de texto (diseño)** — Interfaz para escribir mensajes.
9. **Caja de texto (funcionalidad)** — Guardado del valor escrito en una variable para enviarlo al presionar el botón de envío; uso de `FocusNode` para gestionar el foco del teclado (limpieza del campo al presionar "done" sin cerrar el teclado, y pérdida de foco al tocar fuera de la caja de texto).

## 🚀 Getting Started

Este proyecto es un punto de partida para una aplicación Flutter.

Recursos útiles si es tu primer proyecto con Flutter:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

Para más ayuda, consulta la [documentación oficial de Flutter](https://docs.flutter.dev/), que ofrece tutoriales, ejemplos, guías de desarrollo móvil y la referencia completa de la API.