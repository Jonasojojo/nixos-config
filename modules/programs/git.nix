{
  programs.git = {
    enable = true;
    userName = "Jonasojojo";
    userEmail = "jonas180706@gmail.com";
    extraConfig = {
        init.defaultBranch = "main";
        safe.directory = "/etc/nixos";
    };
  };
}
