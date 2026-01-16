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

    userName = "Jan Frase";
    userEmail = "mrunkioiw@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;
    };
  };
}

