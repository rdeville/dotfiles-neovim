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
        stdenv.mkDerivation {
          name = "neovimrc";
          src = ./.;
          installPhase = ''
            mkdir -p $out;
            cp -r \
              README.md \
              LICENSE* \
              CHANGELOG.md \
              CODE_OF_CONDUCT.md \
              AUTHORS \
              init.lua \
              lua \
              $out
          '';
        };
      default = neovimrc;
    });

    # HOME MANAGER MODULES
    # ========================================================================
    homeManagerModules = {
      neovimrc = {
        pkgs,
        lib,
        config,
        ...
      }: let
        cfg = config.neovimrc;
      in {
        options = {
          neovimrc = {
            enable = lib.mkEnableOption "Enable the installation of the package";
            pkgsOnly = lib.mkEnableOption ''
              Enable only the installation of required packages for plugins
            '';
          };
        };

        config = lib.mkIf cfg.enable {
          home = {
            packages = with pkgs;
              [
                # Packages Needed for LSP
                cargo
                fd
                go
                gnumake
                lua5_1
                luarocks-nix
                nodejs
                nil
                python3
                python3Packages.pip
                ruby
                rustc
                statix
                tree-sitter
                vue-language-server
              ]
              ++ (
                if ! stdenv.hostPlatform.isDarwin
                then [
                  dotnet-sdk
                ]
                else lib.warn ''
                  Current OS is Darwin, dotnet-sdk will not be install through neovimrc homeManagerModules !
                  Ensure you install it from your size.
                '' []
              );
          };

          xdg = lib.mkIf (! cfg.pkgsOnly) {
            configFile = {
              nvim = {
                source = lib.mkDefault self.packages.${pkgs.stdenv.hostPlatform.system}.default;
              };
            };
          };
        };
      };
    };
    homeManagerModule = self.homeManagerModules.neovimrc;
  };
}
