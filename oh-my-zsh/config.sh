#!/usr/bin/env zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

SOURCE_PATH=$(cd "$(dirname "$0")"; pwd -P)
TARGET_PATH=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

# Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $TARGET_PATH/themes/powerlevel10k
ln -nsf $SOURCE_PATH/.p10k.zsh $HOME/.p10k.zsh # Link theme settings

# zsh autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions $TARGET_PATH/plugins/zsh-autosuggestions

# jira plugin
git clone https://github.com/igoradamenko/jira.plugin.zsh.git $TARGET_PATH/plugins/jira

# Link custom zsh configuration
ln -nsf $SOURCE_PATH/.brew-paths.zsh $TARGET_PATH/.brew-paths.zsh
ln -nsf $SOURCE_PATH/.aliases.zsh $TARGET_PATH/.aliases.zsh
ln -nsf $SOURCE_PATH/.exports $TARGET_PATH/.exports
ln -nsf $SOURCE_PATH/.functions $TARGET_PATH/.functions
ln -nsf $SOURCE_PATH/.zsh-completions.zsh $TARGET_PATH/.zsh-completions.zsh
ln -nsf $SOURCE_PATH/.nvm.zsh $TARGET_PATH/.nvm.zsh

# Set path for perl
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5" cpan local::lib
echo 'eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"' >> $TARGET_PATH/.perl.zsh

ln -nsf $SOURCE_PATH/custom.zsh $TARGET_PATH/custom.zsh

# Force rebuild of `zcompdump`
rm -f ~/.zcompdump; compinit -y
chmod go-w "$(brew --prefix)/share"

