# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
ln -s ./.p10k.zsh ~/.p10k.zsh # Link theme settings

# zsh autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# jira plugin
git clone https://github.com/igoradamenko/jira.plugin.zsh.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/jira

# Link custom zsh configuration
ln -s ./custom.zshrc ~/oh-my-zsh/custom/custom.zsh

# Force rebuild of `zcompdump`
rm -f ~/.zcompdump; compinit

# Promp the user to install the required fonts
# Unfortunately `yes Y > p10k configure` doesn't seem to work
# and I haven't found a clean solution to work around it.
# @todo raise an issue on the repo
p10k configure
