name "base"
description "content tthat has to run in all nodes"
run_list "recipe[security]" , "recipe[localusers]"
