{ config, pkgs, ... }:


{
    fileSystems."/mnt/jason" = 
    {
        device = "192.168.178.107:/mnt/main/share";
        fsType = "nfs";
        options = [ "x-systemd.automount" "noauto" ];
    };

    boot.supportedFilesystems = [ "nfs" ];
}

