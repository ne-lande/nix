{ config, lib, pkgs, types, ... }:
with lib;
{
  options.apps.steam = {
    enable = mkEnableOption "enable docker";
  };

  config = mkIf config.apps.steam.enable {
    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
      localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
    };
  };
}
