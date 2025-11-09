{ config, pkgs, ... }:


{
    services.flatpak.enable = true;
    #xdg.portal.enable = true;
    #xdg.portal.extraPortals = with pkgs;
    #[
    #    xdg-desktop-portal-gtk
    #];

    #programs.nix-ld.enable = true;
    #programs.nix-ld.libraries = with pkgs;
    #[
    #];

    programs.steam =
    {
        enable = true;
        localNetworkGameTransfers.openFirewall = true;
    };

    users.users.hydra =
    {
        isNormalUser = true;
        description  = "Hydra";
        extraGroups  = [ "networkmanager" ];
        packages = with pkgs;
        [
            #Games
            #openra
            #ringracers
            ioquake3
            hedgewars
            xonotic
            ut1999
            #zeroad
        ];

    };


    environment.systemPackages =
    [
        #Utilities
        #pkgs.wineWowPackages.staging
        #pkgs.protonup-qt
        #pkgs.winetricks
        pkgs.fish
        pkgs.vim
        pkgs.p7zip
        pkgs.unzip
        pkgs.git
        #pkgs.lutris
    ];
}

