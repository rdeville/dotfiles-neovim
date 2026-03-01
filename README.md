# 👋 Welcome to NeoVim Config

<!-- markdownlint-disable -->
<center>

> ⚠️ IMPORTANT !
>
> Main repo is on [framagit.org](https://framagit.org/rdeville-public/dotfiles/neovim).
>
> On other online git platforms, they are just mirror of the main repo.
>
> Any issues, pull/merge requests, etc., might not be considered on those other
> platforms.

</center>

---

<center>

[![Licenses: (MIT OR BEERWARE)][license_badge]][license_url]
[![Changelog][changelog_badge]][changelog_badge_url]
[![Release][release_badge]][release_badge_url]

</center>
<!-- markdownlint-enable -->

[release_badge]: https://framagit.org/rdeville-public/dotfiles/neovim/-/badges/release.svg
[release_badge_url]: https://framagit.org/rdeville-public/dotfiles/neovim/-/releases/
[license_badge]: https://img.shields.io/badge/Licenses-MIT%20OR%20BEERWARE-blue
[license_url]: https://framagit.org/rdeville-public/dotfiles/neovim/blob/main/LICENSE
[changelog_badge]: https://img.shields.io/badge/Changelog-Python%20Semantic%20Release-yellow
[changelog_badge_url]: https://github.com/python-semantic-release/python-semantic-release

My neovim configuration WITHOUT vim support (contrary to [my old
dotfiles](https://framagit.org/rdeville-public/dotfiles/vim)).

---

## 📌 Prerequisites

- NeoVim: `>= 0.10`, build with LuaJIT

From [LazyVim, a neovim Distribution](https://www.lazyvim.org/):

- Git >= **2.19.0** (for partial clones support)
- a [Nerd Font](https://www.nerdfonts.com/) **_(optional)_**
- a **C** compiler for `nvim-treesitter`. See
  [tree-sitter requirements](https://github.com/nvim-treesitter/nvim-treesitter#requirements)

You may need additional dependencies for some plugins installation, such as
NodeJS, Golang or Python3.

## ⚙️ Install

### Direct Clone

If you want to use this Neovim configuration directly, you can clone this
repository directly in the place of your Neovim configuration directory (usually
`~/.config/nvim`).

<!-- markdownlint-disable -->

```bash
git clone https://framagit.org/rdeville-public/dotfiles/neovim.git ~/.config/nvim
```

<!-- markdownlint-enable -->

**Note**: This method will not use the Nix flake features and you will need to
manage dependencies manually.

### Nix Flake with Home Manager

This repository provides a Nix flake that can be integrated with [Home
Manager](https://nix-community.github.io/home-manager/) to use this Neovim
configuration and its dependencies.

Add this flake to your `home.nix` file (or equivalent Home Manager
configuration):

<!-- markdownlint-disable -->

```nix
{
  inputs = {
    neovim-config.url = "git+https://framagit.org/rdeville-public/dotfiles/neovim";
    # If you have a local clone already
    # neovim-config.url = "/path/to/your/local/clone";
  };

  outputs = { self, nixpkgs, home-manager, neovim-config, ... }: {
    homeConfigurations."your-username" = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages."${builtins.currentSystem}";
      modules = [
        neovim-config.homeManagerModules.neovimrc {
          neovimrc = {
            enable = true;
            # If you only want to install packages required by plugins, without
            # installing the Neovim configuration itself (e.g., if you manage
            # your init.lua and lua/ directory manually):
            # pkgsOnly = true;
          };
        }
      ];
    };
  };
}
```

<!-- markdownlint-enable -->

Then, enable the `neovimrc` module in your Home Manager configuration:

```nix
# ~/.config/home-manager/home.nix or similar
{ config, pkgs, ... }:

{
  imports = [
    # ... other imports
    config.inputs.neovim-config.homeManagerModules.neovimrc
  ];

  # ... other configurations

  neovimrc = {
    enable = true;
    # If you only want to install packages required by plugins, without
    # installing the Neovim configuration itself (e.g., if you manage
    # your init.lua and lua/ directory manually):
    # pkgsOnly = true;
  };

  # Make sure to activate home-manager neovim program
  programs.neovim = {
    enable = true;
    # You might want to use the neovim-nightly package for the latest features
    # package = pkgs.neovim-nightly;
  };
}
```

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check [issues page][issues_pages].

You can also take a look at the [CONTRIBUTING.md][contributing].

[issues_pages]: https://framagit.org/rdeville-public/dotfiles/neovim/-/issues
[contributing]: https://framagit.org/rdeville-public/dotfiles/neovim/blob/main/CONTRIBUTING.md

## 👤 Maintainers

- 📧 [**Romain Deville** \<code@romaindeville.fr\>](mailto:code@romaindeville.fr)
  - Website: [https://romaindeville.fr](https://romaindeville.fr)
  - Github: [@rdeville](https://github.com/rdeville)
  - Gitlab: [@r.deville](https://gitlab.com/r.deville)
  - Framagit: [@rdeville](https://framagit.org/rdeville)

## 📝 License

Copyright © 2024 - 2025

- [Romain Deville \<code@romaindeville.fr\>](code@romaindeville.fr)

This project is under following licenses (**OR**) :

- [MIT][main_license]
- [BEERWARE][beerware_license]

[main_license]: https://framagit.org/rdeville-public/dotfiles/neovim/blob/main/LICENSE
[beerware_license]: https://framagit.org/rdeville-public/dotfiles/neovim/blob/main/LICENSE.BEERWARE
