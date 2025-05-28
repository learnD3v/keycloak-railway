# Keycloak en Railway con Docker

Este proyecto contiene la configuración para desplegar Keycloak usando Docker en Railway, conectado a una base de datos PostgreSQL gestionada también en Railway.

---

## Estructura del proyecto

- `Dockerfile`: Imagen oficial de Keycloak configurada para conectar con la base de datos PostgreSQL interna de Railway.
- `.dockerignore`: Archivos a ignorar al construir la imagen Docker.
- `README.md`: Documentación del proyecto.
- `entrypoint.sh` (opcional): Script para inicialización personalizada (si aplica).
- `.env` (opcional): Variables de entorno locales para desarrollo.

---

## Variables de entorno

Se recomienda definir las siguientes variables en Railway para evitar exponer datos sensibles en el repositorio:

| Variable            | Descripción                        |
|---------------------|----------------------------------|
| `KC_DB_USERNAME`    | Usuario de la base de datos       |
| `KC_DB_PASSWORD`    | Contraseña de la base de datos    |
| `KC_DB_URL`         | URL interna PostgreSQL (`DATABASE_URL`) |
| `KC_HTTP_ENABLED`   | Habilitar HTTP (true/false)       |
| `KC_HOSTNAME_STRICT`| Desactivar validación estricta    |
