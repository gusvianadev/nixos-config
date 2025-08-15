{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history = {
      append = true;
      ignoreAllDups = true;
    };

    shellAliases =
      let
        flakeDir = "~/nix";
      in
      {
        v = "nvim";
        se = "sudoedit";
        ls = "ls --color -lah";
        rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
        upd = "nix flake update ${flakeDir}";
        upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";
        hms = "home-manager switch --flake ${flakeDir}";
        ll = "ls -l";
        lh = "ls -lh";
        cls = "clear";
      };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    initContent = ''
      source ${pkgs.zsh-history-substring-search}/share/zsh-history-substring-search/zsh-history-substring-search.zsh
        bindkey '^[OA' history-search-backward
        bindkey '^[[A' history-search-backward
        bindkey '^[OB' history-search-forward
        bindkey '^[[B' history-search-forward

        # Completion styling
        zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
        zstyle ':completion:*' list-colors "$\{(s.:.)LS_COLORS}"

        # direnv
        eval "$(direnv hook zsh)"
    '';
  };
}
