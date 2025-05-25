# Use official Keycloak image
FROM quay.io/keycloak/keycloak:24.0.1

# Build Keycloak for development mode
RUN /opt/keycloak/bin/kc.sh build

# Expose default Keycloak port
EXPOSE 8080

# Start Keycloak in development mode (uses H2 and allows env vars for credentials)
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
