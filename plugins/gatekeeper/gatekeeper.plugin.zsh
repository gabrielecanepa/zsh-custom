#!/bin/zsh
# profile.plugin https://github.com/gabrielecanepa/zsh-custom/blob/master/plugins

gatekeeper () {
  case $1 in
    disable)
      if [ -z $2 ]; then
        echo "${fg[yellow]}WARNING: this will disable GateKeeper globally$reset_color"
        printf "Are you sure you want to continue? (y/N) "
        read -r choice
        if [[ "$choice" =~ [yY] ]]; then
          if (sudo spctl --master-disable >/dev/null 2>&1); then
            echo "🔓 GateKeeper disabled globally"
          else
            echo "${fg[red]}An error occured, please try again$reset_color"
          fi
        fi
      else
        for app in "${@:2}"; do
          if (sudo xattr -r -d com.apple.quarantine "$app" 2>/dev/null); then
            echo "🔓 GateKeeper disabled for ${app##*/}"
          else
            echo "${fg[red]}Can't disable GateKeeper for ${app##*/}$reset_color"
          fi
        done
      fi
      ;;

    enable)
      if (sudo spctl --master-enable >/dev/null 2>&1); then
        echo "🔒 GateKeeper enabled globally"
      else
        echo "${fg[red]}There was a problem in enabling GateKeeper, please try again$reset_color"
      fi
      ;;

    help|-h|--help)
      echo "Usage: gatekeeper <command>"
      echo
      echo "Commands:"
      echo -e "  disable [apps] \t Disable checks for one or multiple app, or globally if no apps are provided"
      echo -e "  enable \t\t Enable checks globally"
      ;;

    *)
      if [ "$1" ]; then
        echo "${fg[red]}Unknown command: $1$reset_color"
      fi
      gatekeeper --help
      ;;
  esac
}
