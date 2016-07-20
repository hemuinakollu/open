FROM microsoft/dotnet:1.0.0-core

# Set the Working Directory
WORKDIR /app

# Copy the app
COPY /app /app

ARG CONTAINER_PORT=5000
ARG SERVER_URLS=http://*:$CONTAINER_PORT
ENV SERVER.URLS $SERVER_URLS
EXPOSE $CONTAINER_PORT

# Start the app
ENTRYPOINT dotnet TestApp.dll
