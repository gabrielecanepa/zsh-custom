#!/bin/zsh
# node-modules.plugin https://github.com/gabrielecanepa/zsh-custom/blob/master/plugins

CUT="\r\033[1A\033[0K"

node-modules () {
  NODE_MODULES_PATHS=$([ "$WORKING_DIR" ] && echo "$WORKING_DIR" || echo "$HOME")

  case $1 in
    list)
      echo "Looking for modules in $NODE_MODULES_PATHS..."
      node_modules=$(find "$NODE_MODULES_PATHS" -name "node_modules" -type d -prune -print | xargs du -chs | sort -hr)
      if [ "$node_modules" ]; then
        echo "${CUT}$node_modules"
      else
        echo "${CUT}Can't find any module in $NODE_MODULES_PATHS$reset_color"
      fi
      ;;

    clear)
      echo "Looking for modules in $NODE_MODULES_PATHS..."
      count=$(find $NODE_MODULES_PATHS -name "node_modules" -type d -prune | grep -c /)
      if [ $count -gt 0 ]; then
        echo "${CUT}${fg[yellow]}WARNING: this will remove the node_modules folder from $count project$([ $count -gt 0 ] && echo s)$reset_color"
        printf "Are you sure you want to continue? (y/N) "
        read -r choice
        if [[ $choice =~ [yY] ]]; then
          echo "Removing modules from $NODE_MODULES_PATHS..."
          find $NODE_MODULES_PATHS -name "node_modules" -type d -prune -exec rm -rf '{}' +
          echo "${CUT}$reset_color"
        fi
      else
        echo "${CUT}Can't find any module in $NODE_MODULES_PATHS$reset_color"
      fi
      ;;

    help|-h|--help)
      echo "Usage: node-modules <command>"
      echo
      echo "Commands:"
      echo -e "  list\t	List all modules installed in your working directory"
      echo -e "  clear\t	Remove all modules installed in your working directory"
      ;;

    *)
      if [ "$1" ]; then
        echo "${fg[red]}Unknown command: $1$NC"
      fi
      node-modules --help
      ;;
  esac
}
