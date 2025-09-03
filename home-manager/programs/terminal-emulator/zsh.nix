{ config, pkgs, ... }:
{
  enable = true;
  enableCompletion = true;
  autosuggestion.enable = true;
  syntaxHighlighting = {
    enable = true;
  };

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

  envExtra = ''
    export LD_LIBRARY_PATH=/run/opengl-driver/lib:$LD_LIBRARY_PATH
    export TAVILY_API_KEY="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"
  '';

  initContent = ''
    if [ -f "$HOME/.mambaforge/etc/profile.d/conda.sh" ]; then
    	. "$HOME/.mambaforge/etc/profile.d/conda.sh"
    fi
    alias clear='/run/current-system/sw/bin/clear'
    source ${pkgs.zsh-history-substring-search}/share/zsh-history-substring-search/zsh-history-substring-search.zsh
    bindkey '^[OA' history-search-backward
    bindkey '^[[A' history-search-backward
    bindkey '^[OB' history-search-forward
    bindkey '^[[B' history-search-forward

    # Completion styling
    zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
    zstyle ':completion:*' list-colors "$\{(s.:.)LS_COLORS}"

    # PATH
    export PATH="$HOME/.opencode/bin:$PATH"
    export PATH="$HOME/.mambaforge/bin:$PATH"

    # direnv
    eval "$(direnv hook zsh)"
  '';
}
