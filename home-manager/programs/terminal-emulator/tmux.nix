{ pkgs, ... }:
{
  # TODO: tmux is getting deprecated in favor of kitty
  enable = true;
  shell = "${pkgs.zsh}/bin/zsh";
  terminal = "screen-256color";

  baseIndex = 1;
  mouse = true;

  prefix = null;

  keyMode = "vi";

  escapeTime = 0;

  plugins = with pkgs; [
    {
      plugin = tmuxPlugins.tokyo-night-tmux;
      extraConfig = ''
        set -g @theme_variation "night"
      '';
    }
  ];

  extraConfig = ''
    # Terminal colors
    set-option -sa terminal-overrides ",kitty*:Tc"

    # Clipboard
    set -s set-clipboard external

    # Renumber windows
    set -g renumber-windows on

    # Open panes in current directory
    bind c new-window -c "#{pane_current_path}"
    bind '"' split-window -v -c "#{pane_current_path}"
    bind % split-window -h -c "#{pane_current_path}"

    # Atajos de teclado extra
    bind -n M-N previous-window
    bind -n M-O next-window
    bind -n C-S-n swap-window -t +1
    bind -n C-S-o swap-window -t -1
  '';
}
