# hermes-devcontainer

VSCode devcontainer for running Hermes Agent.

## Usage

1. Open this repository in a Dev Container (VS Code, Codespaces, Podman Desktop, or Docker Desktop).
2. The container builds from `nousresearch/hermes-agent:latest` and starts Hermes with `gateway run`.
3. Hermes persistent data is stored in a named volume mounted at `/opt/data`.
4. The dashboard is enabled by default on port `9119`.

## Ports in Codespaces

- `9119` is the Hermes dashboard (web UI) and should open in preview.
- Dashboard basic auth is enabled by default:
  - username: `hermes`
  - password: `hermes-devcontainer`
- `8642` is the Hermes API port; opening the port root URL can return `404` by design.
- Use an API endpoint on `8642` (for example `/health` or `/v1/...`) instead of `/`.
- Port visibility is set to `public` in `devcontainer.json` for easier cross-device access in Codespaces.

## Host services from inside the container

- Docker Desktop / Codespaces: use `host.docker.internal`
- Podman Desktop: use `host.containers.internal`

Both hostnames are mapped in the devcontainer run arguments.
