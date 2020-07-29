# Zsh Custom

My custom Zsh plugins and themes.

- **[Usage](#usage)**

- **[Plugins](plugins)**
  - [`profile`](plugins#profile)
  - [`gatekeeper`](plugins#gatekeeper)
  - [`node_modules`](plugins#node_modules)

- **[Themes](themes)**
  - [`squanchy`](themes#squanchy)

- **[Contributing](#contributing)**

## Usage

Add the extension you want to your `$ZSH_CUSTOM` and activate it in your `~/.zshrc`:

```shell
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

Please [fork the repository](./fork) and [create a new issue](./issues/new/choose) or pull request.

## License

[MIT](https://github.com/gabrielecanepa/.github/blob/master/LICENSE)
