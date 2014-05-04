# Use zeus for commands, if .zeus.sock is present
zeus_if_possible() {
  if [ -e .zeus.sock ]; then
    bundle_install_wrapper zeus "$@"
  else
    "$@"
  fi
}

alias rspec="zeus_if_possible rspec"