# Use Alpine Linux as the base image
FROM alpine:latest

# Update apk repositories and install build dependencies
RUN apk update && \
    apk add --no-cache curl tar bash

# Download and install Nix
RUN curl -L https://nixos.org/nix/install | sh

# Clone Devbox repository
RUN git clone https://github.com/devboxhq/devbox.git /devbox

# Set up the environment as needed
# This could involve running scripts or setting environment variables
# Example: RUN /bin/bash -c "source /devbox/bin/activate"

