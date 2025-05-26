FROM quay.io/keycloak/keycloak:24.0.1

# Build Keycloak configuration
RUN /opt/keycloak/bin/kc.sh build

# Set working directory
WORKDIR /opt/keycloak

# Use dynamic port from Render
EXPOSE 8080

# Use Keycloak in production mode with external DB
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start"]
