# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
unset temp
unset tmp
GITSTATUS_LOG_LEVEL=DEBUG
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"
# ZSH_THEME="powerlevel10k/powerlevel10k"

# set_fast_theme() {
#     FAST_HIGHLIGHT_STYLES[${FAST_THEME_NAME}alias]='fg=blue'
#     FAST_HIGHLIGHT_STYLES[${FAST_THEME_NAME}function]='fg=blue'
# }
zinit ice lucid wait='0'
zinit snippet OMZP::git
zinit snippet OMZP::command-not-found
zinit snippet OMZP::sublime
zinit snippet OMZP::globalias
zinit snippet OMZL::directories.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::functions.zsh
zinit snippet OMZL::clipboard.zsh
zinit snippet OMZL::key-bindings.zsh
zinit snippet OMZL::theme-and-appearance.zsh
zinit ice lucid wait='0' atinit='zpcompinit'; zinit light zdharma/fast-syntax-highlighting
zinit ice wait lucid atload='_zsh_autosuggest_start'; zinit light zsh-users/zsh-autosuggestions
zinit light agkozak/zsh-z
zinit ice lucid wait='0'; zinit light zsh-users/zsh-completions
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit ice wait lucid pick"autopair.zsh"
# zinit load hlissner/zsh-autopair

alias kz="tskill zsh"
alias cdvideo="cd /c/users/n/videos/"
alias cddesktop="cd /c/users/n/desktop/"
alias slp="mpv http://127.0.0.1:5411"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
### End of Zinit's installer chunk
. "/home/n/.acme.sh/acme.sh.env"
