# Plugins

For each plugin, you can print an help message with `<plugin> help`.

## [`profile`](./profile/profile.plugin.zsh) 👤

A powerful plugin to manage your local shell profile and configuration files.

### Notes

To use this plugin you **MUST** have a `dotfiles` folder in the specified `Working directory`. The script will create a symbolic link in the right folder for any each file in this repository (check the supported formats).

## [`gatekeeper`](./gatekeeper/gatekeeper.plugin.zsh) 🔓

Fixes in most cases the `App is damaged and can’t be opened. You should move it to the Trash` error on macOS by disabling Gatekeeper, a macOS security feature blocking the installation of applications downloaded from unidentified developers.

## [`node-modules`](./node-modules/node-modules.plugin.zsh) 👀

The modules stored in `node_modules` can occupy a lot of space in unused projects, this plugin helps list and remove them.
