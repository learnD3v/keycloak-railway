
# Usar la imagen oficial de Keycloak desde Quay.io
FROM quay.io/keycloak/keycloak:latest

# ————— Configuración de la base de datos PostgreSQL externa (Railway) —————
ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://yamabiko.proxy.rlwy.net:59323/railway
ENV KC_DB_USERNAME=postgres
ENV KC_DB_PASSWORD=tljljcrTyeUsqAyJwyzjJyhvfBhrTCpp

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# ————— Configuración de HTTP / Hostname —————
ENV KC_HTTP_ENABLED=true
ENV KC_HOSTNAME_STRICT=false
ENV KC_PROXY=edge

# Nivel de logs para depuración (opcional)
ENV KC_LOGLEVEL=DEBUG

# Iniciar Keycloak en modo de desarrollo
CMD ["start"]

#postgresql://postgres:bpgAvHqwqTEfmUtXUwaDAQllMtlOiqTy@postgres.railway.internal:5432/railway
#postgresql://postgres:bpgAvHqwqTEfmUtXUwaDAQllMtlOiqTy@yamanote.proxy.rlwy.net:31377/railway