{ pkgs, ... }: {
  programs.kitty = {
    enable = true;
    font.name="FiraCode";
    shellIntegration.enableZshIntegration = true;
    theme = "Apprentice";
    keybindings = {
      "ctrl+v" = "paste_from_clipboard";
      "ctrl+c" = "copy_or_interrupt";

      "ctrl+super+]" = "next_window";
      "ctrl+super+[" = "previous_window";
      "ctrl+super+a" = "new_window";
      "ctrl+super+s" = "close_window";
      "ctrl+super+d" = "next_layout";

      "shift+super+]" = "next_tab";
      "shift+super+[" = "previous_tab";
      "shift+super+a" = "new_tab";
      "shift+super+s" = "close_tab";
      "shift+super+d" = "set_tab_title";

      "super+left" = "resize_window narrower";
      "super+right" = "resize_window wider";
      "super+up" = "resize_window taller";
      "super+down"="resize_window shorter 3";

      "super+plus"="change_font_size all +2.0";
      "super+equal"="change_font_size all +2.0";
      "super+minus"="change_font_size all -2.0";
      "super+0"="change_font_size all 0";
    };
    settings = {
        clear_all_shortcurs = "yes";
        background_image = "/home/nelande/test.jpg";
        background_image_layout = "scaled";
        background_image_linear = "yes";
        background_tint = "0.95";
    };
  };
}