{ inputs, config, pkgs, ... }:

{
  home.username = "jonasbernard";
  home.homeDirectory = "/home/jonasbernard";
  home.stateVersion = "25.05";



  imports = [
    ../../modules/moduleBundle.nix
  ];
  vscode.enable = true;
  firefox.enable = true;
  zsh.enable = true;
  ohMyPosh.enable = true;
  home.packages = with pkgs; [
    bat
    libreoffice
  ];
}
