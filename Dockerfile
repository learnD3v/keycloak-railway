FROM quay.io/keycloak/keycloak:latest
# ————— Configuración de la base de datos PostgreSQL externa (Railway) —————
ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://yamabiko.proxy.rlwy.net:59323/railway
ENV KC_DB_USERNAME=postgres
ENV KC_DB_PASSWORD=tljljcrTyeUsqAyJwyzjJyhvfBhrTCpp

# ————— Credenciales del administrador —————
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# ————— Configuración de HTTP / Hostname —————
ENV KC_HTTP_ENABLED=true
ENV KC_HOSTNAME_STRICT=false
ENV KC_PROXY=edge

# 🚨 Estas 2 NO debes ponerlas aquí si quieres que funcionen con Railway dinámicamente:
# ENV KC_HOSTNAME=keycloak-railway-production-b842.up.railway.app
# ENV KC_HOSTNAME_ADMIN_URL=https://keycloak-railway-production-b842.up.railway.app/admin/master/console/

# Estas dos las debes definir directamente en Railway Dashboard como variables de entorno (¡clave!):
# KC_HOSTNAME
# KC_HOSTNAME_ADMIN_URL

# ————— Nivel de logs —————
ENV KC_LOGLEVEL=DEBUG

# ————— Comando de inicio —————
CMD ["start"]
