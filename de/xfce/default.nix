{ config, pkgs, lib, ... }: {
 

  services.xserver.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.xfce.enable = true;
  services.printing.enable = false;
  environment.xfce.excludePackages = with pkgs; [
  xterm
  parole
  ristretto
  mousepad
  xfce4-taskmanager
  xfce4-terminal
  ];
}
