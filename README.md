# hostgroup
A simple bash script to easily examine your ansible inventory

How it works:

My inventory has the form of 

[group_name1]
hostname1

hostname2

[group_name2]

hostname3


Example 1: Get all hosts and the group for each host
```
get_host_env.sh all
hostname1 group_name1  
hostname2 group_name1
hostname3 group_name2
```

Example 2: Get all hosts of group_name2
```
get_host_env.sh group_name2
hostname3 group_name2
```

Example 3: Get all hosts of groups that end with 2
```
get_host_env.sh *2
hostname3 group_name2
```

Example 4: Get all hosts of groups that start with group_*
```
get_host_env.sh group_*
hostname1 group_name1
hostname2 group_name1
hostname3 group_name2
```

Example 4: Get all hosts that start with hostname* and their group
```
get_host_env.sh hostname*
hostname1 group_name1
hostname2 group_name1
hostname3 group_name2
```
