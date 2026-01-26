{
  config,
  pkgs,
  ...
}: {
  # Activate the following services
  services.displayManager.ly = {enable = true;};
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
  services.openssh.enable = true;
  fileSystems."/mnt/data" = {
    device = "//192.168.10.150/data";
    fsType = "cifs";
    options = [
      "credentials=/home/unknown/.cifs-credentials"
      "uid=1000"
      "gid=100"
      "vers=3.0"
    ];
    neededForBoot = false;
  };
  fonts = {
    fontconfig.enable = true;
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
    ];
  };
}
