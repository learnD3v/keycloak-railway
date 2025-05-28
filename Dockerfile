FROM quay.io/keycloak/keycloak:21.1.1

ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:yamanote.proxy.rlwy.net:31377/railway
ENV KC_DB_USERNAME=postgres
ENV KC_DB_PASSWORD=bpgAvHqwqTEfmUtXUwaDAQllMtlOiqTy
ENV KC_HTTP_ENABLED=true
ENV KC_HOSTNAME_STRICT=false

# Para iniciar Keycloak con la consola habilitada
CMD ["start-dev"]

#postgresql://postgres:bpgAvHqwqTEfmUtXUwaDAQllMtlOiqTy@postgres.railway.internal:5432/railway
#postgresql://postgres:bpgAvHqwqTEfmUtXUwaDAQllMtlOiqTy@yamanote.proxy.rlwy.net:31377/railway