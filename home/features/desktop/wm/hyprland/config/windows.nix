{
  wayland.windowManager.hyprland.settings = {
    general = {
      gaps_in = 4;
      gaps_out = 4;
      border_size = 2;
      cursor_inactive_timeout = 4;
      "col.active_border" = "rgba(5529a5FF)";
      "col.inactive_border" = "rgba(4b4358AA)";
    };

    windowrule = let
      f = regex: "float, ^(${regex})$";
      ft = regex: "float, title:^(${regex})(.*)$";
    in [ 
      "tile, firefox"

      (f "rofi")
      (f "btop")
      (f "swayimg")
      (f "joshuto")
      (f "g4music")
      (f "pavucontrol")

      (ft "Save As")
      (ft "Library")
      (ft "Open File")
      (ft "Open Folder")
      (ft "Select a File")
      (ft "Choose wallpaper")
      (ft "Picture-in-Picture")
    ];

    layerrule = let
      b = regex: "blur, ${regex}";
    in [ 
      (b "waybar")
      (b "session")
      (b "launcher")
      (b "sideleft")
      (b "sideright")
      (b "indicator")
      (b "cheatsheet")
      (b "notifications")
      (b "gtk-layer-shell")

      "noanim, sideleft"
      "noanim, sideright"
    ];
  };
}
