{ config, pkgs, ... }:

{
  home.username = "badral";
  home.homeDirectory = "/home/badral";
  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = [
    pkgs.neovim
    pkgs.tmux
    pkgs.htop
    pkgs.lazygit
    pkgs.fzf
    pkgs.rustup
    pkgs.python314
    pkgs.uv
    pkgs.go
    pkgs.nodejs_22
    pkgs.pnpm
    pkgs.fd
    pkgs.jdk21
    pkgs.maven
    pkgs.lombok
    pkgs.geoserver
    pkgs.wl-clipboard
  ];

  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/badral/etc/profile.d/hm-session-vars.sh
  #
  programs.bash = {
    enable = true;
    shellAliases = {
      vi = "nvim";
      vim = "nvim"; # (optional) also alias vim to nvim
    };
  };
  programs.fd = {
    enable = true;
  };
  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
  };
  home.sessionVariables = {
    EDITOR = "nvim";
    OPENAI_KEY = "";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
