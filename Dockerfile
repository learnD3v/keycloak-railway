FROM quay.io/keycloak/keycloak:21.1.1

ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://postgres.railway.internal:5432/railway
ENV KC_DB_USERNAME=postgres
ENV KC_DB_PASSWORD=bpgAvHqwqTEfmUtXUwaDAQllMtlOiqTy
ENV KC_HTTP_ENABLED=true
ENV KC_HOSTNAME_STRICT=false

# 🔧 Limita el uso de memoria de Java
ENV JAVA_OPTS_APPEND="-Xms64m -Xmx256m -XX:MaxMetaspaceSize=128m"

# ✅ Usa el comando correcto para el arranque
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
