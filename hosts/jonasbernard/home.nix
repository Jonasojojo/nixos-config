{ inputs, config, pkgs, ... }:

{
  home.username = "jonasbernard";
  home.homeDirectory = "/home/jonasbernard";
  home.stateVersion = "25.05";



  imports = [
    ../../modules/moduleBundle.nix
    inputs.catppuccin.homeModules.catppuccin
  ];



  #office
  thunderbird.enable = true; 


  catppuccin = {
    kitty = {
      enable = true;
      flavor = "frappe";
    };
    bat = {
      enable = true;
      flavor = "frappe";
    };


  };

  #programs 
  vscode.enable = true;
  firefox.enable = true;
  zsh.enable = true;
  ohMyPosh.enable = true;
  bat.enable = true;
  home.packages = with pkgs; [ 
    libreoffice
  ];
}
