{
  config,
  pkgs,
  ...
}:
{
  # Activate the following services
  services.displayManager.ly = {
    enable = true;
  };
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };
  services.desktopManager.gnome = {
    enable = true;
  };
  services.gnome = {
    core-apps.enable = false;
    core-developer-tools.enable = false;
    games.enable = false;
  };
  fonts = {
    fontconfig.enable = true;
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
    ];
  };
}
