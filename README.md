# Webtop Codespace

A GitHub Codespaces template that launches a full **KDE desktop environment** in your browser using [LinuxServer Webtop](https://docs.linuxserver.io/images/docker-webtop/).

## Getting Started

### 1. Open in Codespaces

Click **Use this template → Open in a codespace** on GitHub. The environment will build automatically and the `start.sh` script will run, starting the webtop container.

### 2. Open the Desktop

When the container starts, Codespaces automatically forwards **port 3000** (HTTP) and **port 3001** (HTTPS). A notification will pop up in the bottom-right corner of VS Code:

> *"Your application running on port 3000 is available."*

Click **Open in Browser** on that notification to open the KDE desktop in a new browser tab.

If you miss the notification, you can open the desktop manually:
1. Click the **Ports** tab in the VS Code panel.
2. Find port **3000** (Webtop HTTP) or **3001** (Webtop HTTPS).
3. Click the globe icon 🌐 next to the port to open it in your browser.

## Files

| File | Description |
|------|-------------|
| `docker-compose.yml` | Docker Compose configuration for the webtop service |
| `start.sh` | Shell script that starts the webtop container |
| `.devcontainer/devcontainer.json` | Codespaces/devcontainer configuration |

## Stopping the Desktop

To stop the webtop container, run:

```bash
docker compose down
```

## Configuration

The compose file mounts a local `./config` directory into the container at `/config` to persist your desktop settings between restarts. You can change the timezone by editing the `TZ` environment variable in `docker-compose.yml`.