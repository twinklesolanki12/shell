#bin/bash
#here argument is taking input from the user 

echo "Enter the Input:$argument"
read argument

#if the user give the input as 'fedora' then the output will be 'CentOS'
if [[ "$argument" = "fedora" ]]
then
   echo "CentOS"

# or if the user give the input as 'redhat' then the output will be 'RHEL'
elif [[ "$argument" = "redhat" ]]
then 
   echo "RHEL"

#if the user will not give any input than it will ask user to give any input like fedora or redhat
else
   echo "Need one argument {redhat|fedora}"
fi
