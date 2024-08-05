{ config, pkgs, ... }:

{
  # Config for nixos minimal
  imports = [
    <nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix>
  ];

  # Setup for downloading the setup script and execute it
  systemd.services.install-script = {
    enable = true;
    description = "Télécharge et exécute le script d'installation";
    after = [ "network-online.target" ];
    wants = [ "network-online.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.wget}/bin/wget -O /tmp/nixinstaller.sh https://github.com/A-DGN/Nixutil/blob/main/src/backend/nixinstaller_protocol/nixinstaller.sh";
      ExecStartPost = "${pkgs.bash}/bin/bash /tmp/nixinstaller.sh";
      Type = "oneshot";
      RemainAfterExit = true;
    };
  };
}


# 1 - Get nixos specific version
# nix-channel --add https://channels.nixos.org/nixos-24.05 nixos-24.05 && nix-channel --update


# 2 - Build the ISO with a specific version
# nix-build '<nixos-24.05/nixos>' -A config.system.build.isoImage -I nixos-config=./iso.nix

# 3 - Send you the iso
# scp -r root@90.90.138.199:folder_path reception_path

