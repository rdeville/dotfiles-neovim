# BEGIN DOTGIT-SYNC BLOCK MANAGED
self: {
  pkgs,
  lib,
  config,
  # BEGIN DOTGIT-SYNC BLOCK EXCLUDED NIX_HOME_MANAGER_MODULE_CUSTOM
  ...
}: let
  cfg = config.neovim;
in {
  options = {
    neovim = {
      enable = lib.mkEnableOption "Enable the installation of the package";
    };
  };

  config = lib.mkIf cfg.enable {
    xdg = {
      configFile = {
        nvim = {
          source = lib.mkDefault self.packages.${pkgs.stdenv.hostPlatform.system}.default;
        };
      };
    };
  };
  # END DOTGIT-SYNC BLOCK EXCLUDED NIX_HOME_MANAGER_MODULE_CUSTOM
}
# END DOTGIT-SYNC BLOCK MANAGED
