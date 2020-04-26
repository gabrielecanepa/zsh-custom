<!-- TODO: add instructions to run shellcheck -->

# Zsh Custom

My custom Zsh plugins and themes 🤓

- **[Usage](#usage)**

- **[Plugins](./plugins)**
  - [`profile`](./profile/profile.plugin.zsh)
  - [`gatekeeper`](./gatekeeper/gatekeeper.plugin.zsh)
  - [`node-modules`](./node-modules/node-modules.plugin.zsh)

- **[Themes](./themes)**
  - [Squanchy](./themes)

- **[Contributing](#contributing)**

## Usage

Clone the extension you want to your `$ZSH_CUSTOM`:

```shell
ext_type="theme" # TODO: add the correct type
ext_name="squanchy" # TODO: add the wanted ext name
ext_path="${ext_type}s/${ext_name}.zsh$([ $ext_type = theme ] && echo -${ext_type} || echo .plugin.zsh)"
curl https://raw.githubusercontent.com/gabrielecanepa/zsh-custom/master/$ext_path > "$ZSH_CUSTOM/$ext_path"
```

Activate the new plugin/theme in your `~/.zshrc`:

```shell
# ~/.zshrc

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

## Contributing

If you want to help improve the project, please fork the repository and [create a new pull request](./fork) 🙏

## License

[MIT](../dotfiles/LICENSE)
