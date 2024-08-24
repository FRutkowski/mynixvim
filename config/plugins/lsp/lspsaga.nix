{
  plugins.lspsaga = {
    enable = true;
    beacon.enable = true;
    ui.border = "rounded"; # One of none, single, double, rounded, solid, shadow
    hover = {
      openCmd = "!firfox";
      openLink = "gx";
    };
    symbolInWinbar = {
      enable = true; # Breadcrumbs
      showFile = false;
    };

    codeAction = {
      showServerName = true;
      numShortcut = false;
      keys = {
        exec = "<CR>";
        quit = [
          "<Esc>"
          "q"
        ];
      };
    };

    lightbulb = {
      enable = true;
      sign = true;
    };

    rename.keys = {
      exec = "<CR>";
      quit = [
        "<C-k>"
        "<Esc>"
      ];
      select = "x";
    };

    outline = {
      closeAfterJump = true;
      layout = "normal"; # normal or float
      winPosition = "right"; # left or right
      keys = {
        jump = "e";
        quit = "q";
        toggleOrJump = "o";
      };
    };

    scrollPreview = {
      scrollUp = "<C-b>";
      scrollDown = "<C-f>";
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "K";
      action = "<cmd>Lspsaga hover_doc<CR>";
      options = {
        desc = "Hover";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>cw";
      action = "<cmd>Lspsaga outline<CR>";
      options = {
        desc = "Outline";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>cr";
      action = "<cmd>Lspsaga rename<CR>";
      options = {
        desc = "Rename";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ca";
      action = "<cmd>Lspsaga code_action<CR>";
      options = {
        desc = "Code Action";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>cd";
      action = "<cmd>Lspsaga show_line_diagnostics<CR>";
      options = {
        desc = "Line Diagnostics";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "[d";
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      options = {
        desc = "Next Diagnostic";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "]d";
      action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
      options = {
        desc = "Previous Diagnostic";
        silent = true;
      };
    }
  ];
}