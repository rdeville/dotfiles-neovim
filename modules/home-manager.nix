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
    xdg = {
      configFile = {
        nvim = {
          source = lib.mkDefault self.packages.${pkgs.stdenv.hostPlatform.system}.default;
        };
      };
    };
  };
}
