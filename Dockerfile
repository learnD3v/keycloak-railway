# Usar la imagen oficial de Keycloak desde Quay.io
FROM quay.io/keycloak/keycloak:21.1.1

# ————— Configuración de la base de datos PostgreSQL externa (Railway) —————
ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://yamabiko.proxy.rlwy.net:59323/railway
ENV KC_DB_USERNAME=postgres
ENV KC_DB_PASSWORD=tljljcrTyeUsqAyJwyzjJyhvfBhrTCpp

# ————— Credenciales de administrador de Keycloak —————
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# ————— Configuración HTTP / Proxy / Hostname —————
# Indica que Keycloak va detrás de un proxy de borde (Railway)
ENV KC_PROXY=edge

# Dominio público que Railway te asignó:
ENV KC_HOSTNAME=keycloak-railway-production-b842.up.railway.app

# URL base pública (frontend de usuarios)
ENV KC_HOSTNAME_URL=https://keycloak-railway-production-b842.up.railway.app

# URL específica de la consola de administración
ENV KC_HOSTNAME_ADMIN_URL=https://keycloak-railway-production-b842.up.railway.app/admin

# Habilitar HTTP interno (Railway maneja HTTPS externamente)
ENV KC_HTTP_ENABLED=true

# Permitir hostnames no estrictos
ENV KC_HOSTNAME_STRICT=false

# Nivel de logs
ENV KC_LOGLEVEL=DEBUG

# ————— Arranque en modo desarrollo —————
CMD ["start-dev"]
