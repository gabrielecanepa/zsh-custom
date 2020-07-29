# Zsh Custom

- **[Usage](#usage)**

- **[Plugins](#plugins)**
  - [`profile`](#profile-)
  - [`gatekeeper`](#gatekeeper-)
  - [`node_modules`](#node_modules-)

- **[Themes](#themes)**
  - [`squanchy`](#squanchy-)

- **[Contributing](#contributing)**

- **[License](#license)**

## Usage

Add the extension you want to your `$ZSH_CUSTOM` and activate it in your `~/.zshrc`:

```sh
ZSH_THEME="squanchy"

plugins=(
  # ...
  gatekeeper
  node-modules
  profile
  # ...
  themes # use it to switch theme with `theme <theme-name>`
)
```

## Plugins

For each plugin, print an help message with `<plugin-name> help`.
  
### `profile` 👤

A powerful plugin to manage your shell profile and configuration files.

> **NB**: to use this plugin you must have a dotfiles folder in the specified Working directory. The script will create a symbolic link in the right system folder for each file you place in this folder (check the supported formats [here](https://github.com/gabrielecanepa/zsh-custom/blob/master/plugins/profile/profile.plugin.zsh#L126-L159).

### `gatekeeper` 🔓

Fixes in most cases the `App is damaged and can’t be opened. You should move it to the Trash` error message by disabling Gatekeeper, a macOS security feature blocking the installation of applications downloaded from unidentified developers.

### `node_modules` 👀

The modules stored in your `node_modules` folders can take a lot of space for unused projects. This small script can list the modules by size and delete them.

## Themes

### `squanchy` ⚡️

![](https://github.com/gabrielecanepa/dotfiles/blob/master/images/squanchy1.png?raw=true)

![](https://github.com/gabrielecanepa/dotfiles/blob/master/images/squanchy2.png?raw=true)

> **NB**: you need a [Nerd Font](https://www.nerdfonts.com/font-downloads) and the `rbenv` and `nvm` plugins to display the icons:

```sh
# ~/.zshrc
ZSH_THEME="squanchy"

plugins=(
  # ...
  nvm
  rbenv
)
```

## Contributing

Please [create a new issue](./issues/new/choose) or [fork the repository](./fork) and open a pull request.

## License

[MIT](https://github.com/gabrielecanepa/.github/blob/master/LICENSE)
