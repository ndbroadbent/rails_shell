# Rake aliases
alias r="rake"
# Run all rake commands with bundle exec, and --trace flag
alias rake="bundle_exec_if_possible rake"
alias rdc="rake db:create"
alias rdp="rake db:drop"
alias rdm="rake db:migrate"
alias rdu="rake db:migrate:up"
alias rdd="rake db:migrate:down"
alias rdr="rake db:rollback"
alias rdtp="rake db:test:prepare"
alias  rsp="rake spec"
alias  rts="rake test"

# Aliases for https://github.com/grosser/parallel_tests
alias rps="rake parallel:spec[$ACTUAL_CPU_CORES]"
alias rpl="rake parallel:load_schema[$ACTUAL_CPU_CORES]"
alias rpls="rake parallel:load_schema[$ACTUAL_CPU_CORES] parallel:spec[$ACTUAL_CPU_CORES]"
