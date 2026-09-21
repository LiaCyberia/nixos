{ config, pkgs, inputs, ... }:

{
  home.username = "naan";
  home.homeDirectory = "/home/naan";
  home.stateVersion = "26.05";

  imports = [
    inputs.spicetify-nix.homeManagerModules.default
    ./modules/packages
    ./modules/term/alacritty/alacritty.nix
    ./modules/term/shell/mksh.nix
    ./modules/packages/spicetify/spicetify.nix
  ];

  programs.git = {
    enable = true;
    settings = {
      user = {
        email = "kerolaynserket@gmail.com";
        name = "LiaCyberia";
      };
    };
  };
}

