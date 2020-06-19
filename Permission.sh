printf "Working Of File Permission"

printf "\n\nCode Designed By ALEN GRACE\nRegister No: 1947203"


######################################## Function Definition ######################################

#Function Definition #1
ques_4()
{
	touch file1.txt
	echo -n "Enter the Role[Admin | Student | Faculty]??: "
	read role_choice
	case $role_choice in
	1)
		chmod 700 file1.txt
		;;
	2) 
		chmod 704 file1.txt
		;;
	3)
		chmod 706 file1.txt
		;;
	*)
		echo "Wrong Input !!!"
	esac
}

#Function Definition #2
ques_5()
{
echo -n "Do you Want to create any file extensiom.[Yes | No]: "
read choice
if [ $choice = "Yes" ]
then
echo -n "What type of extension you want: "
read ext
touch file1.$ext
echo "File Created Successfully !!!"
else
echo "Files Present Currently in the Directory"
ls -l
printf "\nEnter the File Name: "
read file
printf "\nEnter the specific group of .exten you want to compress: "
read user_input
tar -cvf alen.tar $file.$user_input
echo "File Compressed Succesfully"	
fi
}

#Function Definition #3
ques_6()
{
a=$(date +%m)
c=$((a - 3))
if [ $a -gt $c ]
then
echo "File Founded Which is less than 3 month"
else
echo "It is not that older !!!"
fi
}

#Function Definition #4
ques_8()
{
#direcly implementing find command
find -size +1G -mtime +180 -type f -print
}

#Function Definition #5
ques_9()
{

}


									####################################
								    #             MAIN CODE            #
								    ####################################
								    
while :
do
printf "\n1. Assign File Permission\n2: Group and Compress Files on the Basis of Extension"
printf "\n3: Archive the Files Which are Not Archived For Past three Month"
printf "\n4: Compress the files from the current directory which consume more than 1GB"
printf "\n5: Compress Files on the basis of thier Permission"
printf "\n6: Exit"
printf "\nMake Your Choice: "
read choice
if [ $choice -eq 1 ]
then
ques_4
elif [ $choice -eq 2 ]
then
ques_5
elif [ $choice -eq 3 ]
then 
ques_6
elif [ $choice -eq 4 ]
then
ques_8
elif [ $choice -eq 5 ]
then
ques_9
elif [ $choice -eq 6 ]
then
exit
else
printf "Wrong Input!!!!"
fi
done
