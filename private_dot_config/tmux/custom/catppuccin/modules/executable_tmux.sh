show_tmux() {
  local index=$1
  local icon="$(get_tmux_option "@catppuccin_tmux_icon" "")"
  local color="$(get_tmux_option "@catppuccin_tmux_color" "#57B73E")"
  local text="$(get_tmux_option "@catppuccin_tmux_text" "tmux")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
