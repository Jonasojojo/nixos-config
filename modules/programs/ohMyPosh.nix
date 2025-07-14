{ inputs, lib, config, pkgs, ... }:
{
  options.ohMyPosh.enable = lib.mkEnableOption "Enable ohMyPosh shell";

  config = lib.mkIf config.ohMyPosh.enable {
    programs.oh-my-posh = {
      enable = true;
      enableZshIntegration = true;
      useTheme = "catppuccin";
    };
  };
}