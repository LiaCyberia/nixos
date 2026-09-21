{
  pkgs,
  ...
}:
{

  home.packages = with pkgs; [

    #system tools
    btrfs-progs
    gparted
    alsa-utils
    #nautilus 
    #gnome-tweaks
    xarchiver
    thunar-archive-plugin
    xfce4-docklike-plugin

    #terminal
    alacritty
    #kitty
    fastfetch
    pfetch
    git
    curl
    wget
    unzip
    btop
    mksh

    #fonts
    nerd-fonts.adwaita-mono
    nerd-fonts.symbols-only
    nerd-fonts.victor-mono

    #games
    gamemode
    steam
    steam-run
    
    # internet
    vesktop

    # ide
    neovim
  ];

}
