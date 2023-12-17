{ pkgs, ... }: {
  imports = [ 
    ./starship.nix
    ./joshuto.nix
    ./tmux.nix
    ./neofetch
  ];

  home.packages = with pkgs; [
    zoxide
    direnv
    lazygit
    zellij
  ];
}
