{ lib, pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.ripgrep
    pkgs.gawk
  ];

  # NOTE: This code was AI generated.
  system.activationScripts.checkTodoAndFixme = lib.stringAfter [ "users" ] ''
    REPO="/home/necropheus/nix"

    if [ -d "$REPO" ]; then
      TMP_RAW="/tmp/os_todos_raw.txt"
      TMP_PRETTY="/tmp/os_todos_pretty.txt"

      COUNT=$(${pkgs.ripgrep}/bin/rg -c \
        -e '(^|#|//)[[:space:]]*(TODO|FIX(ME)?|XXX)\b' \
        "$REPO" --hidden -g '!**/.git/**' -g '!result*' -g '!**/.direnv/**' -S \
        | ${pkgs.gawk}/bin/awk -F: '{sum+=$2} END{print sum+0}')

      if [ "$COUNT" -gt 0 ]; then
        ${pkgs.ripgrep}/bin/rg -n -A1 \
          -e '(^|#|//)[[:space:]]*(TODO|FIX(ME)?|XXX)\b' \
          "$REPO" --hidden -g '!**/.git/**' -g '!result*' -g '!**/.direnv/**' -S \
          > "$TMP_RAW" || true

        ${pkgs.gawk}/bin/awk '
          /^--$/ { print "--"; next }
          match($0, /^(.*):([0-9]+):(.*)$/, m) {
            printf "%s:%s:\n%s\n", m[1], m[2], m[3];
            next
          }
          match($0, /^(.*)-([0-9]+)-(.*)$/, m) {
            print m[3];
            next
          }
          { print }
        ' "$TMP_RAW" > "$TMP_PRETTY"

        echo -e "\033[33m[WARN] Found $COUNT TODO/FIX in $REPO (showing first 200 lines):\033[0m"
        ${pkgs.coreutils}/bin/head -n 200 "$TMP_PRETTY"
      fi
    fi
  '';
}
