{ inputs, config, pkgs, ... }:

{
  home.username = "jonasbernard";
  home.homeDirectory = "/home/jonasbernard";
  home.stateVersion = "25.05";


  programs.zsh = {
    enable = true;
    shellAliases = {
        btw = "echo i use nixos btw";
        nrs = "sudo nixos-rebuild switch --flake";
    };
  };
  imports = [
    ../../modules/moduleBundle.nix
  ];
  vscode.enable = true;
  home.packages = with pkgs; [
    bat
    libreoffice
  ];
}
