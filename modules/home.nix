{ inputs, config, pkgs, ... }:

{
  home.username = "jonasbernard";
  home.homeDirectory = "/home/jonasbernard";
  home.stateVersion = "25.05";


  programs.zsh = {
    enable = true;
    shellAliases = {
        btw = "echo i use nixos btw";
    };
  };
  imports = [
    ./browsers/browsers.nix
    ./programs/programs.nix
    ./social/social.nix
    #./office/office.nix
  ];
  home.packages = with pkgs; [
    bat
    libreoffice
  ];
}
