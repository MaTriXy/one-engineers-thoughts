
brew_install() {
    if test ! $(which brew); then
      title "Installing homebrew"
      ruby_evaluate "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi

    title "Updating homebrew..."

    brew update
    brew cleanup
    sudo chown -R $USER:staff "$(brew --prefix)"
}

brew_get_root_directory() {
  brew --prefix
}
