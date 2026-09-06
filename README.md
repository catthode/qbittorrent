# Catthode for qBittorrent

> **From CRT to OLED.** Bringing warmth back to a world of cold themes. [cattho.de](https://cattho.de/)

A warm, high-contrast theme for the cross-platform qBittorrent desktop client.

## Installation

1. Download `catthode.qbtheme` from `dist/` or the latest GitHub release.
2. Open **Tools → Options → Behavior → Interface**.
3. Enable **Use custom UI Theme** and select `catthode.qbtheme`.
4. Apply the setting and restart qBittorrent.

## Build

The build requires Qt's `rcc` command or `pyside6-rcc`:

```bash
./build.sh
```

The source bundle contains `stylesheet.qss` and `config.json`; the compiled theme is written to `dist/catthode.qbtheme`.

## License

MIT
