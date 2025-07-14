{lib, config, pkgs, ...}:
{
  options = {
    thunderbird.enable = lib.mkEnableOption "Enable Thunderbird email client";
  };

  config = lib.mkIf config.thunderbird.enable {
    programs.thunderbird = {
      enable = true;
      settings = {
        "mail.compose.default_to_html" = true;
        "mailnews.start_page.enabled" = false;
      };
      profiles.default = {
        isDefault = true;
        settings = {
          "mail.spellcheck.inline" = false;
        };
      };
    };
  };
}