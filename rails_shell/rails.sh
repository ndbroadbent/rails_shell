# Run Rails commands on any version
rails_cmd(){
  # Rails 3
  if [ -e ./script/rails ]; then bundle_install_wrapper rails3_with_editor $@
  # Rails <= 2
  elif [ -e ./script/$1 ]; then bundle_install_wrapper ./script/$@
  # Rails 4
  elif [ -e ./config.ru ] && grep -q Rails ./config.ru; then bundle_install_wrapper rails $@
  else echo "== I don't think this is a Rails application!"
  fi
}
is_rails_app() {
  [ -e ./script/rails ] || [ -e ./script/$1 ] || ([ -e ./config.ru ] && grep -q Rails ./config.ru)
}

alias   rs="rails_cmd server"
alias  rsd="rails_cmd server -u"
alias   rc="rails_cmd console"
alias  rdb="rails_cmd dbconsole"
alias   rg="rails_cmd generate"
alias   ru="rails_cmd runner"

# Aliases for running Rails on different ports
for p in $(seq 1 9); do
  alias "rs$p"="rails_cmd server -p 300$p"
  alias "rsd$p"="rails_cmd server -u -p 300$p"
done
