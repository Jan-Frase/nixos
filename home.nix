{ pkgs, ... }:
{
  programs.bash.enable = true;
  # Check documentation before changing.
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    git
    nixfmt
  ];

  programs.git = {
    enable = true;

    settings = {
      user.name = "Jan Frase";
      user.email = "mrunkioiw@gmail.com";
      init.defaultBranch = "main";
      pull.rebase = true;
    };
  };
}
