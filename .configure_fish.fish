#! /usr/local/bin/fish

# Symlink the config.fish file to its proper location
ln -s ./config.fish ~/.config/fish/

# Install the Tacklebox framework
curl -L https://raw.githubusercontent.com/justinmayer/tacklebox/master/tools/install.fish | fish

# Add vcprompt as it's required by some of the themes
brew install vcprompt
