{ inputs, config, pkgs, lib, ... }:
{

  options = {
    firefox.enable = lib.mkEnableOption "enables LibreWolf browser";
  };
  config = lib.mkIf config.firefox.enable {
    programs.firefox = {
      enable = true;
      package = pkgs.firefox;
      policies = {

      DisableTelemetry = true;
      DisableFirefoxStudies = true;
      EnableTrackingProtection = {
        Value= true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
       };
        ExtensionSettings = {
          #add ublock origin to my browser
          "{uBlock0@raymondhill.net}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/file/4492375/ublock_origin-1.64.0.xpi";
            installation_mode = "force_installed";
            "extensions.autoDisableScopes" = 0;
          };
          # add everforest_dark_hard to my browser
          "{39ec6c53-67ca-42cc-9f23-339cca400ef2}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/file/4055905/everforest_dark_official-2.0.xpi";
            installation_mode = "force_installed";
            "extensions.autoDisableScopes" = 0;
          };
        };
      };
    };
  };
}
