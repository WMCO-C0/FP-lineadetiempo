# 📊 Línea de Tiempo de Falsos Positivos en Colombia

## 🌍 Descripción Conceptual

Este proyecto es una visualización interactiva de línea de tiempo que documenta los casos de "falsos positivos" en Colombia, un término que se refiere a los asesinatos de civiles presentados como bajas en combate durante el conflicto armado interno del país, particularmente entre 2002 y 2008.

🔍 **Objetivo Principal**: Proporcionar una representación visual clara y accesible de estos eventos históricos, facilitando la comprensión de su distribución temporal y geográfica.

## 🛠️ Descripción Técnica

### 🏗️ Estructura del Proyecto

```
Timeline-FP/
├── public/           # Archivos estáticos
├── src/
│   ├── assets/      # Recursos multimedia
│   ├── components/  # Componentes de Astro
│   ├── layouts/     # Plantillas de diseño
│   └── pages/       # Páginas de la aplicación
├── astro.config.mjs # Configuración de Astro
└── package.json     # Dependencias y scripts
```

### 🚀 Tecnologías Utilizadas

- **Astro** 🚀: Framework web moderno para construir sitios rápidos
- **TypeScript** 📜: Para tipado estático
- **SPARQL** 🔍: Lenguaje de consulta para Wikidata
- **TimelineJS** ⏳: Biblioteca para crear líneas de tiempo interactivas
- **CSS** 🎨: Para estilos personalizados

### 📊 Fuente de Datos

Los datos se obtienen de **Wikidata** mediante consultas SPARQL, incluyendo:
- Nombres de las víctimas
- Fechas de muerte
- Lugares de los hechos
- Imágenes (cuando están disponibles)
- Descripciones

### 🏃‍♂️ Cómo Ejecutar el Proyecto

1. Clona el repositorio
2. Instala las dependencias:
   ```bash
   npm install
   ```
3. Inicia el servidor de desarrollo:
   ```bash
   npm run dev
   ```
4. Abre tu navegador en `http://localhost:4321`

### 🏗️ Construcción para Producción

```bash
npm run build
```

### 🌟 Características

- Visualización interactiva de línea de tiempo
- Filtrado por fechas
- Información detallada de cada caso
- Diseño responsivo
- Carga asíncrona de datos

### 📝 Notas Adicionales

- El proyecto está en español para facilitar el acceso a la población colombiana
- Los datos se actualizan automáticamente desde Wikidata
- Se incluye manejo de errores para casos de fallo en la carga de datos

### 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.

---

Desarrollado con ❤️ para la memoria histórica de Colombia