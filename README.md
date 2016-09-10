About
=====

Installer for [dotfiles](https://github.com/moenth/dotfiles).
This script will clone the dotfiles project to a bare repository with your home
directory as the work tree. Existing dotfiles will be backed up in
`~/.cfg-bak` if necessary.

Usage
=====

To install dotfiles:
```
git clone http://github.com/moenth/dotfiles-installer
./dotfiles-installer/install.sh
rm -rf dotfiles-installer
```