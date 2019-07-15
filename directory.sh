#bin/bash
#dir_name is used to take the input as directoryname from the user


echo "Enter directory name:$dir_name"
read dir_name

#here this if condition will check that the input is blank or not if the input is blank then it will give an message to the user to please give the input 
if [ -z "$dir_name" ]
 then
         echo "please enter the directory name here"
         read dir_name
 fi

#here the if condition will check whether the dir_name name directory exists or not
if [ ! -d "$dir_name" ]
then
    echo "Directory doesn't exist. Creating"

#and if the dir_name directory doesn't exists so here it will create anew directory by the name dir_name

    mkdir $dir_name

#once the dir_name directory is created it will ask the user to give the desired path where they want to save that directory

    echo "Enter the path where do u wanna save this new Directory:$new_dirpath"
    read new_dirpath
    echo "Directory created here:$new_dirpath"

#here this command will move the new directory to the path given by the user

    mv /home/viola/$dir_name $new_dirpath/$dir_name
else

#if the directory already exist it will give a message 
    echo "ERROR!!!File already exits , use any other name"
fi


