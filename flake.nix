{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = {
    system = "x86_64-linux";
    modules = [ ./configuration.nix ];
  };
}
