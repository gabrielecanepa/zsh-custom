## Plugins

For each plugin, print an help message with `<plugin-name> help`.

#### [`profile`](https://github.com/gabrielecanepa/zsh-custom/blob/master/plugins/profile/profile.plugin.zsh) 👤

A powerful plugin to manage your shell profile and configuration files.

**N.B.** To use this plugin you must have a `dotfiles` folder in the specified `Working directory`. The script will create a symbolic link in the right system folder for each file you place in this folder (check the supported formats [here](profile/profile.plugin.zsh#L126-L159)).

#### [`gatekeeper`](https://github.com/gabrielecanepa/zsh-custom/blob/master/plugins/gatekeeper/gatekeeper.plugin.zsh) 🔓

Fixes in most cases the `App is damaged and can’t be opened. You should move it to the Trash` error on macOS by disabling Gatekeeper, a macOS security feature blocking the installation of applications downloaded from unidentified developers.

#### [`node-modules`](https://github.com/gabrielecanepa/zsh-custom/blob/master/plugins/node-modules/node-modules.plugin.zsh) 👀

The modules stored in `node_modules` folder can occupy a lot of space in unused projects. With this plugin you can list these folders by size and remove them.
