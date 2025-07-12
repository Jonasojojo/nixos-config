{
  programs.kitty = {
    enable = true;
    extraConfig = builtins.readFile ./themes/everforest.conf;
  };
}
