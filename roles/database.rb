name "databse"
description "mysql servers"
run_list "role[base]","recipe[mysql]"
