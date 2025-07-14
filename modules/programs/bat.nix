 {config, lib, pkgs, ...}:
{
  options = {
    bat.enable = lib.mkEnableOption "enables bat for syntax highlighting and file viewing";
  };
    config = lib.mkIf config.bat.enable {
      programs.bat = {
      enable = true;
      package = pkgs.bat;
    };
  };
}
