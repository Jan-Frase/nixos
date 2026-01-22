{ pkgs, ... }: 
{
  programs.bash.enable = true;
  # Check documentation before changing.
  home.stateVersion = "24.11";

  home.packages = [
    pkgs.git
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

