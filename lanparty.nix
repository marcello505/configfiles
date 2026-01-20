{ config, pkgs, ... }:


{
    networking.firewall.enable = false;

    services.flatpak.enable = true;
    systemd.services.flatpak-repo = {
      wantedBy = [ "multi-user.target" ];
      path = [ pkgs.flatpak ];
      script = ''
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
      '';
    };

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
        initialPassword = "hydra";
        packages = with pkgs;
        [
            # Games
            openra
            ringracers
            ioquake3
            hedgewars
            serious-sam-classic
            xonotic
            #ut1999
            #zeroad
            # Utilities
            copyparty
            p7zip
            unzip
            git
        ];

    };
}

