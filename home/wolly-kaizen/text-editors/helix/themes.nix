{
  cyberdream = let
    bg = "#16181a";
    fg = "#ffffff";
    grey = "#7b8496";
    blue = "#5ea1ff";
    green = "#5eff6c";
    cyan = "#5ef1ff";
    red = "#ff6e5e";
    yellow = "#f1ff5e";
    magenta = "#ff5ef1";
    pink = "#ff5ea0";
    orange = "#ffbd5e";
    purple = "#bd5eff";
    bgAlt = "#1e2124";
    bgHighlight = "#3c4048";
  in {
    "ui.background" = bg;
    "ui.text" = fg;
    "ui.cursor" = {
      bg = fg;
      fg = bg;
    };
    "ui.linenr" = grey;
    "ui.statusline" = {fg = cyan;};
    "ui.selection" = green;
    "ui.selection.primary" = magenta;

    # Syntax Highlighting for Code
    "comment" = {
      fg = grey;
      modifiers = ["italic"];
    };
    "comment.line" = {
      fg = grey;
      modifiers = ["italic"];
    };
    "comment.block" = {
      fg = grey;
      inherit bg;
      modifiers = ["italic"];
    };
    "comment.documentation" = {
      fg = blue;
      modifiers = ["italic"];
    };
    "keyword" = orange;
    "keyword.control" = orange;
    "keyword.operator" = pink;
    "keyword.function" = orange;
    "type" = cyan;
    "type.builtin" = cyan;
    "function" = blue;
    "function.builtin" = pink;
    "function.method" = blue;
    "variable" = fg;
    "variable.builtin" = magenta;
    "variable.parameter" = cyan;
    "string" = green;
    "string.special" = pink;
    "constant" = fg;
    "constant.builtin" = red;
    "constant.numeric" = yellow;
    "constant.character" = pink;
    "constant.boolean" = red;
    "attribute" = magenta;
    "operator" = purple;
    "tag" = {
      fg = purple;
      modifiers = ["bold"];
    };
    "tag.special" = {
      fg = orange;
      modifiers = ["bold"];
    };
    "namespace" = purple;
    "macro" = orange;
    "label" = red;

    # Interface specific
    "ui.cursorline.primary" = {bg = bgHighlight;};
    "ui.cursorline.secondary" = {bg = bgAlt;};
    "ui.cursorcolumn.primary" = {bg = bgHighlight;};
    "ui.cursorcolumn.secondary" = {bg = bgAlt;};
    "ui.statusline.normal" = {inherit fg bg;};
    "ui.statusline.insert" = {
      fg = green;
      inherit bg;
    };
    "ui.statusline.select" = {
      fg = blue;
      inherit bg;
    };
    "ui.statusline.command" = {
      fg = red;
      inherit bg;
    };
    "ui.statusline.visual" = {
      fg = purple;
      inherit bg;
    };

    # Diagnostic styles
    "warning" = {
      fg = yellow;
      modifiers = ["bold"];
    };
    "error" = {
      fg = red;
      modifiers = ["bold"];
    };
    "info" = {
      fg = cyan;
      modifiers = ["bold"];
    };
    "hint" = {
      fg = blue;
      modifiers = ["bold"];
    };
    "diagnostic.error" = {fg = red;};
    "diagnostic.warning" = {fg = yellow;};
    "diagnostic.info" = {fg = cyan;};
    "diagnostic.hint" = {fg = blue;};

    # Popups and Menus
    "ui.popup" = {inherit fg bg;};
    "ui.popup.info" = {
      fg = cyan;
      bg = bgAlt;
    };
    "ui.menu" = {inherit fg bg;};
    "ui.menu.selected" = {
      fg = bg;
      bg = fg;
    };

    # Additional overrides
    "ui.virtual.whitespace" = grey;
    "ui.virtual.indent-guide" = {
      fg = grey;
      style = "dotted";
    };
  };
}

