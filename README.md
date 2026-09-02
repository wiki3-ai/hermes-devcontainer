# hermes-devcontainer

VSCode devcontainer for running Hermes Agent.

## Usage

1. Open this repository in a Dev Container (VS Code, Codespaces, Podman Desktop, or Docker Desktop).
2. The container builds from `nousresearch/hermes-agent:latest` and starts Hermes with `gateway run`.
3. Hermes persistent data is stored in a named volume mounted at `/opt/data`.

## Host services from inside the container

- Docker Desktop / Codespaces: use `host.docker.internal`
- Podman Desktop: use `host.containers.internal`

Both hostnames are mapped in the devcontainer run arguments.
