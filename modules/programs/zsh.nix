{ inputs, lib, config, pkgs, ... }:
{
  options.zsh.enable = lib.mkEnableOption "Enable zsh shell";

  config = lib.mkIf config.zsh.enable {
    programs.zsh = {
      enable = true;
      shellAliases = {
        btw = "echo i use nixos btw";
        nrs = "sudo nixos-rebuild switch --flake ./";
        cd = "z";
        ls = "eza --icons";
        y = "yazi";
        cat = "bat";
      };
      syntaxHighlighting.enable = true;
      autosuggestion.enable = true;
    };
  };
}