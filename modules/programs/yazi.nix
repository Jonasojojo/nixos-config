{ inputs, lib, config, pkgs, ... }:
{
  options = {
    yazi.enable = lib.mkEnableOption "enables vscode";
  };
  
  config = lib.mkIf config.vscode.enable {
    programs.yazi = {
      enable = true;
      package = pkgs.yazi;
      settings = {
        "yazi.enable" = true;
      };
    };
  };
}