Click **Use this template > Open in a codespace** on GitHub. The environment will build automatically and the `start.sh` script will run, starting the webtop container.
When the container starts, Codespaces automatically forwards **port 3000** A notification will pop up in the bottom-right corner of VS Code:
> *"Your application running on port 3000 is available."*
Click **Open in Browser** on that notification to open the KDE desktop in a new browser tab.
If you miss the notification, you can open the desktop manually:
1. Click the **Ports** tab in the VS Code panel.
2. Find port **3000**.
3. Click the globe icon next to the port to open it in your browser.

To stop the container, run:

```bash
docker compose down
```
The compose file mounts a local `./config` directory into the container at `/config` to persist your desktop settings between restarts. You can change the timezone by editing the `TZ` environment variable in `docker-compose.yml`.
