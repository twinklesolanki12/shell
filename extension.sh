#$ dir_source_path is taking path of the directory from where the user wanted to take a file to compress

echo "Enter the Directory path:$dir_source_path"
read dir_source_path
 if [ -z "$dir_source_path" ]
 then
	 echo "please enter the directroy path here"
	 read  dir_source_path
 fi


#$Ext is taking the file extension as a input from the user , which they want to compress in tar.gz


echo "Enter the File Extension which you want to compress:$Ext"
read Ext
if [ -z "$Ext" ]
 then
         echo "please enter the file extension here"
         read Ext
 fi

#$destination is taking the destination path of the compressed file


echo "Enter the destination path of the compressed file:$destination"
read destination

date_file="`date +%F`"
tar_file_name="$Ext$date_file.tar.gz"
echo "++++++++++++++++++++++++$tar_file_name"

tar zcvf $dir_source_path/$tar_file_name *.$Ext

echo "++++++++++++++++++++$dir_source_path/*.$Ext"
mv $dir_source_path/$tar_file_name $destination/$tar_file_name





