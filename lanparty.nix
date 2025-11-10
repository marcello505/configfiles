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

    programs.gamemode.enable = true;
    programs.steam =
    {
        enable = true;
        localNetworkGameTransfers.openFirewall = true;
    };

    users.users.hydra =
    {
        isNormalUser = true;
        description  = "Hydra";
        extraGroups  = [ "networkmanager" "gamemode" ];
        packages = with pkgs;
        [
            # Games
            #openra
            #ringracers
            ioquake3
            hedgewars
            xonotic
            ut1999
            #zeroad
            # Utilities
            p7zip
            unzip
            git
        ];

    };
}

