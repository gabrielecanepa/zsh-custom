# Gitbenvm - https://github.com/gabrielecanepa/zsh-custom/blob/master/themes

# Tabs
ZSH_THEME_TERM_TITLE_IDLE="%n@%m: %~"
ZSH_THEME_TERM_TAB_TITLE_IDLE="%~"

# Icons
git_icon="\\ue727"
ruby_icon="\\uf43b"
nvm_icon="\\ue718"

# Prompt
PROMPT=' %{$fg[cyan]%}%c%{$reset_color%}' # path
PROMPT+='$(git_prompt_status)%{$reset_color%} ' # git
RPROMPT='$(github_prompt_info) $(ruby_prompt_info)  $(nvm_prompt_info)' # ruby + nvm

# Git
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[magenta]%}↑"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[magenta]%}↓"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}*"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}*"
ZSH_THEME_GIT_PROMPT_UNSTAGED=""

# Github
github_prompt_info () {
  echo "${git_icon}gabrielecanepa"
}

# Ruby
ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[red]%}$ruby_icon "
ZSH_THEME_RUBY_PROMPT_SUFFIX="%{$reset_color%}"

# NVM
ZSH_THEME_NVM_PROMPT_PREFIX="%{$fg[green]%}$nvm_icon "
ZSH_THEME_NVM_PROMPT_SUFFIX="%{$reset_color%}"
