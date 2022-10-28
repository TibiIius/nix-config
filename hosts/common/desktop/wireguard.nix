{ config, pkgs, wgIps, ... }:

{
  networking = {
    networkmanager.enable = true;
    firewall = {
      allowedUDPPorts = [ 51280 ];
    };
    wg-quick = {
      interfaces = {
        wg0 = {
          address = wgIps;
          listenPort = 51820;
          privateKeyFile = "/home/tim/.local/share/wireguard/private.key";
          dns = [ "192.168.2.192" ];
          peers = [
            {
              publicKey = "1Fx899Qb9lR/cLH4eMd4BMOOjmkdROTBNNbxysq6e1E=";
              allowedIPs = [ "0.0.0.0/0" "::/0" ];
              endpoint = "wg.timfb.dev:51820";
            }
          ];
        };
      };
    };
  };
}
