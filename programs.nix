{
  config,
  pkgs,
  ...
}:
{
  # Install the following packages
  environment.systemPackages = with pkgs; [
    # NixOs Basis
    swayfx
    swaybg
    swaylock
    waybar
    networkmanagerapplet
    pwvucontrol
    ghostty
    neovim
    yazi
    git
    unzip
    zip
    cifs-utils
    wofi
    thunderbird
    firefox
    evince
    kdePackages.okular
    libreoffice-still
    hyphenDicts.de_DE
    nerd-fonts.jetbrains-mono
    xwayland
  ];
}
