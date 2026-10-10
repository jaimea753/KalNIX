{ pkgs, ... }:

let
  securityTools = import ./vm-security/tools.nix {
    inherit pkgs;
  };
in
{
  networking.hostName = "security-vm";

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ ];
    allowedUDPPorts = [ ];
  };

  users.users.user = {
    isNormalUser = true;
    uid = 1000;
    home = "/home/user";
    createHome = true;
    extraGroups = [ "wheel" ];
    initialPassword = "user";
  };

  security.sudo.enable = true;

  # XFCE graphical desktop.
  services.xserver = {
    enable = true;
    resolutions = [ { x = 1920; y = 1080; } ];
    desktopManager.xfce.enable = true;
    displayManager = {
      lightdm.enable = true;
      sessionCommands = ''
        ${pkgs.xrandr}/bin/xrandr -s 1920x1080
        setxkbmap es
      '';
    };
  };

  services.displayManager.autoLogin = {
    enable = true;
    user = "dev";
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

  system.stateVersion = 26.04;
}
