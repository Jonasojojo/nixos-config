{ inputs, config, pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = with pkgs.vscode-extensions; [
        bbenoist.nix
        ms-python.python
        ms-python.debugpy
        ms-vscode.cpptools
        ms-vscode.cpptools-extension-pack
        ms-azuretools.vscode-docker
        github.copilot
        eamodio.gitlens
        christian-kohler.path-intellisense
        pkief.material-icon-theme
    ];
  };
}


