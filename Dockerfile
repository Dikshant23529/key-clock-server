FROM quay.io/keycloak/keycloak:24.0.1

# Build Keycloak configuration
RUN /opt/keycloak/bin/kc.sh build

# Set working directory
WORKDIR /opt/keycloak

# Default port Render expects (change to 10000)
ENV PORT=10000

# Expose port for Render
EXPOSE ${PORT}

# Start Keycloak in dev mode with proper port binding
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port=10000"]
