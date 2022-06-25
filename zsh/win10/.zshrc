# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

GITSTATUS_LOG_LEVEL=DEBUG
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"
# ZSH_THEME="powerlevel10k/powerlevel10k"

# set_fast_theme() {
#     FAST_HIGHLIGHT_STYLES[${FAST_THEME_NAME}alias]='fg=blue'
#     FAST_HIGHLIGHT_STYLES[${FAST_THEME_NAME}function]='fg=blue'
# }
zinit ice lucid wait='0'
zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh
zinit snippet OMZ::plugins/sublime/sublime.plugin.zsh
zinit snippet OMZ::lib/directories.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/functions.zsh
zinit snippet OMZ::lib/clipboard.zsh
zinit ice lucid wait='0' atinit='zpcompinit'; zinit light zdharma/fast-syntax-highlighting
zinit ice wait lucid atload='_zsh_autosuggest_start'; zinit light zsh-users/zsh-autosuggestions
zinit light agkozak/zsh-z
zinit ice lucid wait='0'; zinit light zsh-users/zsh-completions
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit ice wait lucid pick"autopair.zsh"
zinit load hlissner/zsh-autopair

alias kz="tskill zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
