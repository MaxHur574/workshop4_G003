# Taller Nº3 - Optimización de Docker

## Autor
Nombre Apellido

## Cambios realizados
- Corrección de sintaxis en Dockerfile (`FROM` en lugar de `FROOM`).
- Uso de imagen base ligera (`python:3.12-alpine`).
- Implementación de multi-stage build para reducir tamaño.
- Instalación de dependencias con `uv` en entorno virtual.
- Creación de `.dockerignore` para excluir archivos innecesarios.

## Tamaño de la imagen
- **Antes de optimización:** ~450 MB (con Ubuntu base).
- **Después de optimización:** 172 MB (con Alpine + multi-stage build).

## Ejecución
Construir la imagen:
```bash
docker build -t taller3-eval .
