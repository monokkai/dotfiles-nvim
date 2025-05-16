 🎨 macOS Terminal Setup with Zsh and Oh My Posh (Devaslife Style)

A complete guide to customizing your macOS terminal – from installing essential tools to achieving a sleek, functional terminal inspired by Devaslife. 📁 Repository Structure

dotfiles-public/ ├── .config/ │ └── oh-my-posh/ │ └── devaslife.omp.json # Custom Oh My Posh theme ├── .zshrc # Zsh configuration └── README.md # This file

🛠️ Installation & Setup

    Install Homebrew

If you don’t have Homebrew installed, run:

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    Install Zsh and Oh My Zsh

brew install zsh sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

Make Zsh your default shell:

chsh -s $(which zsh)

    Install Oh My Posh

brew install jandedobbeleer/oh-my-posh/oh-my-posh

    Install Nerd Font

Install a Nerd Font (used for icons in the prompt):

oh-my-posh font install

Then set the Nerd Font in your terminal emulator (e.g., iTerm2, Terminal). ⚙️ Configuration

    Copy the Custom Theme

Create the config directory:

mkdir -p ~/.config/oh-my-posh

Download and place devaslife.omp.json from this repo into that folder:

cp path/to/devaslife.omp.json ~/.config/oh-my-posh/

    Update .zshrc

Add the following line to your .zshrc:

eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/devaslife.omp.json)"

Apply the changes:

source ~/.zshrc

✅ Result

Your terminal should now show:

Apple icon () on the left

Current folder path with subtle truncation

Git status and branch in yellow if active

Right-aligned Node.js version and current time

Minimalist style with powerline glyphs

💡 Tips

Use a terminal with font and color support (iTerm2 recommended).

Keep Oh My Posh updated:

brew update && brew upgrade oh-my-posh

Customize further by editing devaslife.omp.json.

