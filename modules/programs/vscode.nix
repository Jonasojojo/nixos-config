{ inputs, lib, config, pkgs, ... }:
{
  options = {
    vscode.enable = lib.mkEnableOption "enables vscode";
  };

  config = lib.mkIf config.vscode.enable {
    programs.vscode = {
      enable = true;
      package = pkgs.vscode;
      profiles.default.extensions = with pkgs.vscode-extensions; [
          bbenoist.nix
          ms-python.python
          ms-python.debugpy
          ms-vscode.cpptools
          ms-vscode.cpptools-extension-pack
          ms-azuretools.vscode-docker
          github.copilot
          github.copilot-chat
          eamodio.gitlens
          christian-kohler.path-intellisense
          pkief.material-icon-theme
          catppuccin.catppuccin-vsc
      ];
    };
  };
}