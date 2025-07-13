{ inputs, lib, config, pkgs, ... }:
{
  options = {
    zsh.enable = lib.mkEnableOption "enables zsh shell";
  };
    programs.zsh = {
    enable = true;
    shellAliases = {
        btw = "echo i use nixos btw";
        nrs = "sudo nixos-rebuild switch --flake ./";
        cd = "z";
        ls = "eza --icons";
        y = "yazi";
    };
    syntaxHighlighting = {
      enable = true;    };
  };
  autosuggestions = {
    enable = true;
  };
  ohMyZsh = {
    enable = true;
    theme = "powerlevel10k/powerlevel10k";
  };
}