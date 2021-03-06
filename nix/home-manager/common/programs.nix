{ pkgs, ... }:

{
  programs = {
    home-manager = {
      enable = true;
      path = https://github.com/rycee/home-manager/archive/master.tar.gz;
    };

    git = {
      enable = true;

      package = pkgs.gitAndTools.hub;
    };

    vim = {
      enable = true;
      plugins = [ ];
    };
  };
}
