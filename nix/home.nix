{ pkgs, config, ... }:
let
  dotfilesDir = "$HOME/dev/dotfiles";
in {
  home = {
    activation.linkFiles = config.lib.dag.entryAfter ["writeBoundary"] ''
        # ln -sf ${dotfilesDir}/basic/.critical-keys.sample ~/.critical-keys
        ln -sf ${dotfilesDir}/basic/.zsh_aliases ~/.zsh_aliases
        ln -sf ${dotfilesDir}/basic/.zshrc ~/.zshrc
        ln -sf ${dotfilesDir}/basic/.functions ~/.functions

        ln -Tsf ${dotfilesDir}/emacs/.doom.d ~/.doom.d
        ln -Tsf ${dotfilesDir}/emacs/.lsp ~/.lsp
        ln -Tsf ${dotfilesDir}/emacs/.clj-kondo ~/.clj-kondo
        ln -sf ${dotfilesDir}/emacs/.joker ~/.joker
        ln -Tsf ${dotfilesDir}/emacs/.jokerd ~/.jokerd

        ln -sf ${dotfilesDir}/git/.gitconfig ~/.gitconfig

        ln -sf ${dotfilesDir}/gregflix/.tmdb-functions ~/.tmdb-functions
        ln -sf ${dotfilesDir}/gregflix/.gregflix-functions ~/.gregflix-functions
        ln -sf ${dotfilesDir}/gregflix/.s3cfg ~/.s3cfg

        ln -sf ${dotfilesDir}/tmux/.tmux.conf ~/.tmux.conf
        ln -Tsf ${dotfilesDir}/tmux/.tmuxinator ~/.tmuxinator

        ln -sf ${dotfilesDir}/vim/.vimrc ~/.vimrc

        ln -sf ${dotfilesDir}/vscode/keybindings.json ~/.config/Code/User/keybindings.json
        ln -sf ${dotfilesDir}/vscode/settings.json ~/.config/Code/User/settings.json

        ln -sf ${dotfilesDir}/urxvt/.Xresources ~/.Xresources
    '';
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.home-manager.path = https://github.com/rycee/home-manager/archive/master.tar.gz;

  programs = {

    emacs = {
      enable = true;
    };

    git = {
      enable = true;

      package = pkgs.gitAndTools.hub;

    };

    vim = {
      enable = true;
      plugins = [  ];
    };
  };
}
