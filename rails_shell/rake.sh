# Rake aliases
alias r="zeus_if_possible rake"
# Run all rake commands with bundle exec, and --trace flag
alias rake="zeus_if_possible rake"
alias rdc="zeus_if_possible  rake db:create"
alias rdp="zeus_if_possible  rake db:drop"
alias rdm="zeus_if_possible  rake db:migrate"
alias rdu="zeus_if_possible  rake db:migrate:up"
alias rdd="zeus_if_possible  rake db:migrate:down"
alias rdr="zeus_if_possible  rake db:rollback"
alias rdtp="zeus_if_possible rake db:test:prepare"
alias  rsp="zeus_if_possible rake spec"
alias  rts="zeus_if_possible rake test"

# Aliases for https://github.com/grosser/parallel_tests
alias rps="zeus_if_possible rake parallel:spec[$ACTUAL_CPU_CORES]"
alias rpl="zeus_if_possible rake parallel:load_schema[$ACTUAL_CPU_CORES]"
alias rpls="zeus_if_possible rake parallel:load_schema[$ACTUAL_CPU_CORES] parallel:spec[$ACTUAL_CPU_CORES]"
