# Usar la imagen oficial de Keycloak desde Quay.io
FROM quay.io/keycloak/keycloak:21.1.1

# Configuración de la base de datos PostgreSQL externa
ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://postgres.railway.internal:5432/railway  
ENV KC_DB_USERNAME=postgres
ENV KC_DB_PASSWORD=bpgAvHqwqTEfmUtXUwaDAQllMtlOiqTy

# Usuario administrador inicial de Keycloak
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Habilitar HTTP para la consola de administración
ENV KC_HTTP_ENABLED=true

# Deshabilitar la restricción de hostname
ENV KC_HOSTNAME_STRICT=false

# Nivel de logs para depuración (opcional)
ENV KC_LOGLEVEL=DEBUG

# Iniciar Keycloak en modo de desarrollo
CMD ["start-dev"]


#postgresql://postgres:bpgAvHqwqTEfmUtXUwaDAQllMtlOiqTy@postgres.railway.internal:5432/railway
#postgresql://postgres:bpgAvHqwqTEfmUtXUwaDAQllMtlOiqTy@yamanote.proxy.rlwy.net:31377/railway