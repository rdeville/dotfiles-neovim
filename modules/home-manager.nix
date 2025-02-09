self: {
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
    };
  };

  config = lib.mkIf cfg.enable {
    home = {
      packages = with pkgs; [
        # Packages Needed for LSP
        cargo
        fd # better find, needed for some plugins
        go
        lua5_1
        luarocks-nix
        nodejs
        nil # nix language server
        python3
        python3Packages.pip
        ruby
        rustc
        tree-sitter
        vue-language-server
      ];
    };

    xdg = {
      configFile = {
        nvim = {
          source = lib.mkDefault self.packages.${pkgs.stdenv.hostPlatform.system}.default;
        };
      };
    };
  };
}
