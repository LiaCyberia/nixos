{ config, lib, pkgs, ... }:

{
  imports =
    [
	./sys/hardware-configuration.nix
	./sys/boot.nix
	./sys/zram.nix
	./de/xfce/default.nix
];

  networking.hostName = "nix";

  networking.networkmanager.enable = true;
  networking.nameservers = [ "1.1.1.1" "8.8.8.8" ];
  networking.enableIPv6 = false;


  time.timeZone = "America/Fortaleza";

  services.xserver.xkb = {
    layout = "br";
    variant = "abnt2"; 
  };

   users.users.naan = {
     isNormalUser = true;
     extraGroups = [ "wheel" ];
     packages = with pkgs; [
       tree
     ];
   };

  programs.firefox.enable = true;

  services.flatpak.enable = true;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes"];
  
  system.stateVersion = "26.05";
}
