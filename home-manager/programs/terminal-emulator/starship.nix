{
  enable = true;
  settings = {
    format = ''
      $username [](bold red) $directory [](bold purple)  
    '';
    right_format = "$cmd_duration$character $git_branch$git_status";
    character = {
      success_symbol = " [](bold green)";
      error_symbol = " [](bold red)";
    };
    add_newline = false;
    fill = {
      symbol = " ";
      style = "bold red";
    };
    directory = {
      truncation_length = 3;
      fish_style_pwd_dir_length = 2;
      home_symbol = " ";
      read_only = " 󰦝 ";
      read_only_style = "bold cyan";
      style = "bold purple";
      format = "[$path]($style)[$read_only]($read_only_style)";
    };
    username = {
      show_always = true;
      style_user = "bold red";
      format = " 🧛 [$user]($style)";
    };
    cmd_duration = {
      style = "bold yellow";
      format = "[$duration]($style) ";
    };
    git_branch = {
      symbol = " ";
      style = "bold purple";
      format = "[$symbol$branch(:$remote_branch)]($style)";
    };
    git_status = {
      format = "([\\[$all_status$ahead_behind\\]]($style))";
    };
    aws = {
      symbol = "  ";
    };
    buf = {
      symbol = " ";
    };
    c = {
      symbol = " ";
    };
    conda = {
      symbol = " ";
    };
    crystal = {
      symbol = " ";
    };
    dart = {
      symbol = " ";
    };
    docker_context = {
      symbol = " ";
    };
    elixir = {
      symbol = " ";
    };
    elm = {
      symbol = " ";
    };
    fennel = {
      symbol = " ";
    };
    fossil_branch = {
      symbol = " ";
    };
    golang = {
      symbol = " ";
    };
    guix_shell = {
      symbol = " ";
    };
    haskell = {
      symbol = " ";
    };
    haxe = {
      symbol = " ";
    };
    hg_branch = {
      symbol = " ";
    };
    hostname = {
      ssh_symbol = " ";
    };
    java = {
      symbol = " ";
    };
    julia = {
      symbol = " ";
    };
    kotlin = {
      symbol = " ";
    };
    lua = {
      symbol = " ";
    };
    memory_usage = {
      symbol = "󰍛 ";
    };
    meson = {
      symbol = "󰔷 ";
    };
    nim = {
      symbol = "󰆥 ";
    };
    nix_shell = {
      symbol = " ";
    };
    nodejs = {
      symbol = " ";
    };
    ocaml = {
      symbol = " ";
    };
    os = {
      symbols = {
        Alpaquita = " ";
        Alpine = " ";
        AlmaLinux = " ";
        Amazon = " ";
        Android = " ";
        Arch = " ";
        Artix = " ";
        CentOS = " ";
        Debian = " ";
        DragonFly = " ";
        Emscripten = " ";
        EndeavourOS = " ";
        Fedora = " ";
        FreeBSD = " ";
        Garuda = "󰛓 ";
        Gentoo = " ";
        HardenedBSD = "󰞌 ";
        Illumos = "󰈸 ";
        Kali = " ";
        Linux = " ";
        Mabox = " ";
        Macos = " ";
        Manjaro = " ";
        Mariner = " ";
        MidnightBSD = " ";
        Mint = " ";
        NetBSD = " ";
        NixOS = " ";
        OpenBSD = "󰈺 ";
        openSUSE = " ";
        OracleLinux = "󰌷 ";
        Pop = " ";
        Raspbian = " ";
        Redhat = " ";
        RedHatEnterprise = " ";
        RockyLinux = " ";
        Redox = "󰀘 ";
        Solus = "󰠳 ";
        SUSE = " ";
        Ubuntu = " ";
        Unknown = " ";
        Void = " ";
        Windows = "󰍲 ";
      };
    };
    package = {
      symbol = "󰏗 ";
    };
    perl = {
      symbol = " ";
    };
    php = {
      symbol = " ";
    };
    pijul_channel = {
      symbol = " ";
    };
    python = {
      symbol = " ";
    };
    rlang = {
      symbol = "󰟔 ";
    };
    ruby = {
      symbol = " ";
    };
    rust = {
      symbol = "󱘗 ";
    };
    scala = {
      symbol = " ";
    };
    swift = {
      symbol = " ";
    };
    zig = {
      symbol = " ";
    };
  };
}
