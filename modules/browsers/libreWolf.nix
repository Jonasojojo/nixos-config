{ inputs, config, pkgs, ... }:
{
  programs.firefox = {
    enable = true;
    package = pkgs.librewolf;
    policies = {
      ExtensionSettings = {
        # add everforest_dark_hard to my browser
        "{c0f86627-5243-4bf4-a522-a41ed12f1737}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/file/4055905/everforest_dark_official-2.0.xpi";
          installation_mode = "force_installed";
          "extensions.autoDisableScopes" = 0;
        };
      };
    };
  };
}
