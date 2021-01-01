# Build a docker image

    docker build . -t first-svelte-app:0.1

# Run a docker container
    docker run --init --rm -p 3000:3000 first-svelte-app:0.1
