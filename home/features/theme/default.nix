{ pkgs, inputs, ... }:

let
  moreWaita = pkgs.stdenv.mkDerivation {
    name = "MoreWaita";
    src = inputs.more-waita;
    installPhase = ''
      mkdir -p $out/share/icons
      mv * $out/share/icons
    '';
  };

  nerdfonts = (pkgs.nerdfonts.override {
    fonts = [
      "Ubuntu"
      "UbuntuMono"
      "CascadiaCode"
      "FantasqueSansMono"
      "FiraCode"
      "Mononoki"
    ];
  });
  cursor-theme = "Qogir";
  cursor-package = pkgs.qogir-icon-theme;
in {
  home = {
    packages = with pkgs; [
      font-awesome
      papirus-icon-theme
      qogir-icon-theme
      whitesur-icon-theme
      colloid-icon-theme
      adw-gtk3
      nerdfonts
      moreWaita
    ];

    sessionVariables = {
      # GTK_THEME = "Nordic";
      # QT_AUTO_SCREEN_SCALE_FACTOR  = "1";
      # QT_QPA_PLATFORMTHEME = "gtk3";
      # QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      # DISABLE_QT5_COMPAT = "0";
      XCURSOR_THEME = cursor-theme;
      XCURSOR_SIZE = "24";
    };
    pointerCursor = {
      size = 24;
      gtk.enable = true;
      name = cursor-theme;
      package = cursor-package;
    };
    file = {
      ".local/share/fonts" = {
        recursive = true;
        source = "${nerdfonts}/share/fonts/truetype/NerdFonts";
      };
      ".fonts" = {
        recursive = true;
        source = "${nerdfonts}/share/fonts/truetype/NerdFonts";
      };
      ".config/gtk-4.0/gtk.css" = {
        text = ''
          window.messagedialog .response-area > button,
          window.dialog.message .dialog-action-area > button,
          .background.csd{
            border-radius: 0;
          }
        '';
      };
      ".local/share/icons/MoreWaita" = {
        source = "${moreWaita}/share/icons";
      };
    };
  };

  gtk = {
    enable = true;
    font.name = "Ubuntu Nerd Font";
    theme.name = "adw-gtk3-dark";
    cursorTheme = {
      name = cursor-theme;
      package = cursor-package;
    };
    iconTheme.name = "MoreWaita";
    gtk3.extraCss = ''
      headerbar, .titlebar, 
      .csd:not(.popup):not(tooltip):not(messagedialog) decoration {
        border-radius: 0;
      }
    '';
  };

  qt = {
    enable = true;
    platformTheme = "gtk";
    style.name = "adwaita-dark";
  };
}