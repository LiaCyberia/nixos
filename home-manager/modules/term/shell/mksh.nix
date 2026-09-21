{ pkgs, ... }:

{
  home.packages = [ pkgs.mksh ];

  home.file.".mkshrc".text = ''
    export PS1='૮(◞ ‸ ◟ )ა ☆彡 '

    alias ll='ls -la'
    alias lh='ls -lah'
    alias ..='cd ..'

    if [ -f ~/.nix-profile/etc/profile.d/nix.sh ]; then
      . ~/.nix-profile/etc/profile.d/nix.sh
    fi
  '';
}

