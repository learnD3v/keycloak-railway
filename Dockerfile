# Usar la imagen oficial de Keycloak desde Quay.io
FROM quay.io/keycloak/keycloak:21.1.1

# Configuración de la base de datos PostgreSQL externa
ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://yamanote.proxy.rlwy.net:31377/railway  
# Asegúrate de que esta URL sea accesible
ENV KC_DB_USERNAME=postgres
ENV KC_DB_PASSWORD=bpgAvHqwqTEfmUtXUwaDAQllMtlOiqTy

# Habilitar HTTP para la consola de administración
ENV KC_HTTP_ENABLED=true

# Deshabilitar la restricción de hostname (útil si no estás usando un hostname estricto)
ENV KC_HOSTNAME_STRICT=false

# Nivel de logs para depuración (opcional)
ENV KC_LOGLEVEL=DEBUG

# ⬅️ Esta línea permite que Keycloak use el puerto que Railway le asigna
CMD ["sh", "-c", "kc.sh start-dev --http-port=$PORT"]


#postgresql://postgres:bpgAvHqwqTEfmUtXUwaDAQllMtlOiqTy@postgres.railway.internal:5432/railway
#postgresql://postgres:bpgAvHqwqTEfmUtXUwaDAQllMtlOiqTy@yamanote.proxy.rlwy.net:31377/railway