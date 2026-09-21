{ pkgs, ... }:

{

 imports = [
    ../shell/mksh.nix
  ];

  programs.alacritty = {
    enable = true;
    
    settings = {
      env.TERM = "xterm-256color";
	
	shell = "${pkgs.mksh}/bin/mksh";

      window = {
        padding = {
          x = 10;
          y = 10;
        };
        opacity = 0.8;
        decorations = "full";
      };

      font = {
        size = 12.0;
        normal = {
          family = "monospace";
          style = "Bold";
        };
      };

      colors = {
        primary = {
          background = "#000000";
          foreground = "#ffffff";
        };
      };
    };
  };
}

