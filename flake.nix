{
  description = ''
    Flake for NeoVim Config

    My neovim configuration WITHOUT vim support (contrary to [my old
    dotfiles](https://framagit.org/rdeville-public/dotfiles/vim)).
  '';

  inputs = {
    # Stable Nix Packages
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
  };

  outputs = inputs @ {self, ...}: let
    pkgsForSystem = system:
      import inputs.nixpkgs {
        inherit system;
      };
    # This is a function that generates an attribute by calling a function you
    # pass to it, with each system as an argument
    forAllSystems = inputs.nixpkgs.lib.genAttrs allSystems;

    allSystems = [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];
  in {
    # TOOLING
    # ========================================================================
    # Formatter for your nix files, available through 'nix fmt'
    # Other options beside 'alejandra' include 'nixpkgs-fmt'
    formatter = forAllSystems (
      system:
        (pkgsForSystem system).alejandra
    );

    # PACKAGES
    # ========================================================================
    packages = forAllSystems (system: rec {
      neovimrc = with import inputs.nixpkgs {inherit system;};
        callPackage ./package.nix {};
      default = neovimrc;
    });

    # HOME MANAGER MODULES
    # ========================================================================
    homeManagerModules = {
      neovimrc = import ./modules/home-manager.nix self;
    };
    homeManagerModule = self.homeManagerModules.neovimrc;

  };
}
