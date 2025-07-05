# My Dotfiles

This repository contains my personal dotfiles for various tools and applications.

## Directory Structure

- `fish/` - Fish shell configuration
- `ghostty/` - Ghostty terminal configuration
- `nvim/` - Neovim configuration
- `oh-my-posh/` - Oh My Posh themes and configuration
- `posh/` - PowerShell configuration
- `tmux/` - Tmux configuration
- `lazygit/` - Lazygit configuration
- `mise/` - Mise configuration

## Installation

1. Clone this repository:
```bash
git clone https://github.com/monokkai/dotfiles-public.git ~/.config
```

2. Each tool's configuration is contained in its respective directory. You can symlink or copy the configurations as needed.

## License

Feel free to use and modify these configurations as you see fit. 

## Zshrc config file


# Instant prompt (Powerlevel10k)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""  # отключаем Powerlevel10k
plugins=(
  git
  eza
  fzf
  zsh-autosuggestions
  zsh-syntax-highlighting
)
# source $ZSH/oh-my-zsh.sh  # не подключаем тему

# Use modern ls colors
export LSCOLORS="GxFxCxDxBxegedabagaced"

# 🟢 ← едиственный правильный запуск OMP
eval "$(oh-my-posh init zsh --config ~/.config/posh/devaslife.omp.json)"


# История
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Автодополнение и подсветка
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
DISABLE_CORRECTION="true"
export TERM="xterm-256color"

# Пути
export PATH="$HOME/.yarn/bin:$HOME/.npm-global/bin:$HOME/.console-ninja/.bin:$PATH"

# Алиасы
alias ll="eza -al --icons --git --group-directories-first --time-style=long-iso --color=always --no-permissions --no-user --header --color-scale"
alias ls="eza --icons --color=always"
alias l="eza -l --icons --git --color=always"
alias n="nvim"
alias tn="tmux new"
alias c="clear"
alias kb="kubectl"
alias tf="terraform"
alias bsj="brew services start jenkins-lts"
alias bss="brew services stop jenkins-lts"


# Git алиасы
alias gs="git status -sb"
alias gl="git log --graph --pretty=format:'%C(yellow)%h%Creset -%C(blue)%d%Creset %s %Cgreen(%cr) %C(bold cyan)<%an>%Creset' --abbrev-commit"
alias gd="git diff --color-words"
alias gp="git push -u origin"
alias ga="git add ."
alias g="git"
alias gi="git init"
alias br="browsh"
alias lg="lazygit"

# Прочее
export LANG=en_US.UTF-8
export EDITOR=nvim
precmd() { print -Pn "\e]0;%n@%m: %~\a" }
