{ inputs, config, pkgs, lib, ... }:

{
  options = {
    firefox.enable = lib.mkEnableOption "enables firefox browser";
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
          force = true;

          #add ublock origin to my browser
          "{uBlock0@raymondhill.net}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/file/4492375/ublock_origin-1.64.0.xpi";
            installation_mode = "force_installed";
          };

          #add firefoxcolor frappe to my browser
          "{FirefoxColor@mozilla.com}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/file/4055905/everforest_dark_official-2.0.xpi";
            installation_mode = "force_installed";
          };
        };
      };
    };
  };
}
