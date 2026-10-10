{ pkgs, lib, ... }:

let
  securityTools = import ./tools.nix {
    inherit pkgs lib;
  };
in
{
  networking = {
    hostName = "kalnix";
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [ ];
      allowedUDPPorts = [ ];
    }
  }

  users.users.kalnix = {
    isNormalUser = true;
    uid = 1000;
    home = "/home/kalnix";
    createHome = true;
    extraGroups = [ "wheel" ];
    initialPassword = "kalnix";
    shell = pkgs.zsh;
  };

  security.sudo.enable = true;

  # ZSH shell
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
  
    shellAliases = {
      ll = "ls -l";
      edit = "sudo -e";
      update = "sudo nixos-rebuild switch";
    };
  
    histSize = 10000;
    histFile = "$HOME/.zsh_history";
    setOptions = [
      "HIST_IGNORE_ALL_DUPS"
    ];
    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "z"
      ];
      theme = "robbyrussell";
    };
  };

  # XFCE graphical desktop.
  services.xserver = {
    enable = true;
    resolutions = [ { x = 1920; y = 1080; } ];
    desktopManager.xfce.enable = true;
    displayManager = {
      lightdm.enable = true;
    };
  };

  environment.systemPackages =
    [
      pkgs.xfce4-terminal
    ]
    ++ securityTools.packages
    ++ [
      securityTools.desktopEntries
      securityTools.menuDirectories
  ];

  environment.etc."xdg/menus/applications-merged/security-tools.menu".source =
    securityTools.menuXml;

  environment.etc."xdg/menus/applications-merged/security.directory".text = ''
    [Desktop Entry]
    Type=Directory
    Name=Security
    Comment=Security assessment tools
  '';
  
  environment.variables = {
    EDITOR = "vim";
    PAGER = "less";
  };

  system.stateVersion = "26.04";
}
