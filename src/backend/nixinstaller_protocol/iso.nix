{ config, pkgs, ... }:

{
  imports = [
    ./configuration.nix # votre configuration de base pour NixOS
  ];

  # Configuration pour démarrer automatiquement le script d'installation
  systemd.services.install-script = {
    enable = true;
    description = "Télécharge et exécute le script d'installation";
    after = [ "network-online.target" ];
    wants = [ "network-online.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.wget}/bin/wget -O /tmp/install.sh <URL_de_votre_script>";
      ExecStartPost = "${pkgs.bash}/bin/bash /tmp/install.sh";
      Type = "oneshot";
      RemainAfterExit = true;
    };
  };
}
