{ config, lib, pkgs, ... }:

{
  imports = [];

  wsl = {
    enable = true;
    defaultUser = "developer";
  };

  nix.settings = {
    experimental-features = ["nix-command" "flakes"];
  };

  environment.systemPackages = with pkgs; [
    stow
    git
    tmux
    neovim
    starship
    fish
  ];

  users.users.developer = {
    isNormalUser = true;
    extraGroups = [ "wheel "];
  };

  system.stateVersion = "26.05";
}
