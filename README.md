# Dotfiles
=================

[![Publish Docker image](https://github.com/frozenfoxx/dotfiles/actions/workflows/publish.yml/badge.svg)](https://github.com/frozenfoxx/dotfiles/actions/workflows/publish.yml)

This is a dotfile repository managed by [Dotbot][dotbot].

To keep submodules at their proper versions, you could include something like
`git submodule update --init --recursive` in your `install.conf.yaml`.

# Requirements
-------
Change shell to zsh and login in again:

```shell
chsh -s $(which zsh)
```

# Usage
-------
Clone this repository and install:

```shell
git clone https://github.com/frozenfoxx/dotfiles
cd dotfiles
./install
```

# Updating
-------
Run the following to update dotbot to the latest version:

```shell
git submodule update --remote dotbot
git status
git commit -a -m 'Updated dotbot'
```

License
-------

This software is hereby released into the public domain. That means you can do
whatever you want with it without restriction. See `LICENSE.md` for details.

That being said, I would appreciate it if you could maintain a link back to
Dotbot (or this repository) to help other people discover Dotbot.

[dotbot]: https://github.com/anishathalye/dotbot
