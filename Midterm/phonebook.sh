
Midterm 1 Fall 2021
Ashwin Ashok
•
Oct 6 (Edited Oct 13)
80/100
80 points out of possible 100
Due Oct 15, 11:59 PM
Please submit via Google classroom only. Please do not upload multiple versions. Please keep only the updated version.


For codes, you MUST upload your codes as a separate file with appropriate extension.


All the best.


DUE DATE: Noon on Monday Oct 11 (make sure you have submitted before the class on Monday). No extensions.

Midterm1_csc3320_Fall2021.pdf
PDF
10 class comments

Rob TognoniOct 8
Does the calculator need to be able to handle floating point/decimal numbers?

Ashwin AshokOct 8
Yes. But upto 1 decimal is fine

Kris SmallOct 9
how do you want us to utilize regex for the calculator? I feel that cases would work better or do we specifically need to find some way to incorporate regex?

OmarOct 11
Hello, Professor, you probably expected it. Is there a room for extension?

OmarOct 11
Or can we get penalized for each day we are late?

Andrew BullingtonOct 13
I kind need to know too.

Ashwin AshokOct 13
Check the latest announcements.

Babatunde BelloNov 10
For all private messages regarding your grades . I will always review them in the night accordingly!

Ashwin AshokNov 10
@Bello: I have been addressing them today. I think almost all are addressed. Anything that may come here on (after 5pm EST) you please address.

Babatunde BelloNov 10
Thanks @Ashwin Ashok

Your work
Graded

Midterm1_csc3320_Fall2021.docx
Word

calculator.sh
Text

helpme.sh
Text

myexamfile.txt
Text

myexamfile1.sh
Text

phonebook.sh
Text
4 private comments

Faisal MusaOct 11
Linux for my computer is literally too slow and i have tried to copy the code into a text editor in linux OS but it took 3 hours for that to even happen and it was on number 3. If you have any solutions for me please me know before the due time. Thank you

Babatunde BelloNov 10
phonebook script didn't run successfully (-5)

Babatunde BelloNov 10
Q2 didn't run successfully and instruction not fully followed (-10)

Babatunde BelloNov 10
calculator instruction not fully followed(10)

infile="phone.txt"
menu()
{
echo ""
echo "____________________"
echo " Phone Book Utility "
echo "1.   Display"
echo "2.   Find"
echo "3.   Add"
echo "4.   Modify"
echo "5.   Delete"
echo "6.   Exit"
echo " "
}


touch "$infile"
chmod 600 "$infile"

clear


while [ "$option" != "6" ]
do

     fname=""
     lname=""
     phone=""
     address=""

     oldfname=""
     oldlname=""
     oldphone=""
     oldaddress=""

     newfname=""
     newlname=""
     newphone=""
     newaddr=""

     case "$option" in
      1)
	 if [ -s "$infile" ]
	 then
	     echo ""
	     echo "Sorted on Last Name"
	     echo ""
		

	     sort -t":" -k2 "$infile" | column -s: -t | more
	 else
	     echo ""
	     echo "No phone directory '$infile' found"
	 fi

	 menu
	 echo -n "Enter option [1-6]: "
	 read option
	 continue
	 ;;
      2)
	 if [ ! -r "$infile" ]
	 then
	     echo ""
	     echo "Error: Youre not allowed to read '$infile'"
	     echo ""

	     exit 1
	 fi

	 echo ""

	 while [ -z "$fname" ]
	 do
	     echo -n "Enter First Name"
	     read lname

	     if [ "$fname" = "exit" ]
	     then
		  exit 0
	     fi
	 done

	 while [ -z "$lname" ]
	 do
	     echo -n "Enter Last Name"
	     read lname

	     if [ "$lname" = "exit" ]
	     then
		 exit
	     fi
	 done


	 fname=(echo "$lname" | tr -s ' ')
	 lname=$(echo "$lname" | tr -s ' ')

	 echo ""
	 entry=$(grep -iw "$fname:$lname" "$infile")


	 if [ -z "$entry" ]
	 then
	     echo "Info: No match found"
	     
	     menu
	     echo -n "Enter option [1-6]: "
	     read option
	     continue
	 else
	    echo "$entry"
	 fi

	 menu
	 echo -n "Enter option [1-6]: "
	 read option
	 continue
	 ;;
      3)
	 if [ ! -w "$infile" ]
	 then
	     menu
	     echo "Error: Youre not allowed to write into $infile"
	     echo ""
	
	     exit 1
	 fi
	 echo ""

	 while [ -z "$fname" ]
	 do
	     echo -n "Enter First Name"
	     read fname
	
	     if [ "$fname" = "exit" ]
	     then
		 exit 0
	     fi
	 done

	 while [ -z "$lname" ]
	 do
	     echo -n "Enter Last name"
	     read lname
	
	     if [ "$lname" = "exit" ]
	     then
		 exit 0
	     fi
	 done

	 while [ -z "$phone" ]
         do
             echo -n "Enter phone#"
             read phone

             if [ "$phone" = "exit" ]
             then
                 exit 0
             fi
         done
	
	 while [ -z "$address" ]
         do
             echo -n "Enter address"
             read address

             if [ "$address" = "exit" ]
             then
                 exit 0
             fi
         done
	
	 echo "$fname:$lname:$phone:$address" >> "$infile"
	 echo ""
	 echo "Info: New phone added"

	 menu
	 echo -n "Enter option [1-6]: "
	 read option

	 continue
	 ;;
      4)
	 if [ ! -w "$infile" ]
	 then
	    echo ""
	    echo "Error: Youre not allowed to write into $infile"
	    echo ""

	    exit 1
	 fi

	 echo ""

	 while [ -z "$oldfname" ]
         do
             echo -n "Enter old FIrst Name"
             read oldfname

             if [ "$oldfname" = "exit" ]
             then
                 exit 0
             fi
         done

	 while [ -z "$oldlname" ]
         do
             echo -n "Enter old Last Name"
             read oldfname

             if [ "$oldlname" = "exit" ]
             then
                 exit 0
             fi
         done

	 echo ""

	 while [ -z "$newfname" ]
         do
             echo -n "Enter new FIrst Name"
             read newfname

             if [ "$newfname" = "exit" ]
             then
                 exit 0
             fi
         done

	 while [ -z "$newlname" ]
         do
             echo -n "Enter new Last Name"
             read newlname

             if [ "$namelname" = "exit" ]
             then
                 exit 0
             fi
         done

	 while [ -z "$newphone" ]
         do
             echo -n "Enter new phone"
             read newphone

             if [ "$newphone" = "exit" ]
             then
                 exit 0
             fi
         done

	 while [ -z "$newaddr" ]
         do
             echo -n "Enter new address"
             read newaddr

             if [ "$newaddr" = "exit" ]
             then
                 exit 0
             fi
         done
	 

	 oldfname=$(echo "oldfname" | tr -s ' ')
	 oldfname=$(echo "oldfname" | tr -s ' ')

	 echo ""
	 oldentry=$(grep -iw "$oldfname:$oldlname" "$infile")
	 newentry="newfname:$newlname:$newphone:$newaddr"

	 if [ -z "$oldentry" ]
	 then
	     echo "Info: No match found"

	     menu
	     echo -n "Enter option [1-6]: "
	     read option
	     continue
	 else
	     sed -i "s/$oldentry/$newentry/" "$infile"
	     echo "Info: Modified phone:"
	 fi
	 menu
	 echo =n "Enter option [1-6]: "
	 read option 
	 continue
	 ;;
      5) echo ""
	 while [ -z "$fname" ]
	 do
	     echo -n "Enter First Name"
	     read fname

	     if [ "$fname" = "exit" ]
	     then
		 exit 0
	     fi
	 done
	 

	 fname=$(echo "$fname" | tr -s ' ')
	 lname=$(echo "$lname" | tr -s ' ')


	 tmpfile=$(mktemp)
	 grep -iwv "$fname:$lname" "$infile" > "$tmpfile"


	 orgirowcount=$(wc -l < "$infile")
	 tmprowcount=$(wc -l < "$tmpfile")

	 if [ "$orgirowcount" -eq "$tmprowcount" ]
	 then 
	     echo ""
	     echo "Info: No match found"

	     menu
	     echo -n "Enter option [1-6]: "
	     read option
	     continue
	 else
	     mv "$tmpfile" "$infile
             echo ""
	     echo "Info: Deleted phone"

             menu
             echo -n "Enter option [1-6]: "
             read option

             continue
	 fi
	 ;;
      6) echo ""
	 exit 0
	 ;;
      *) menu
	 echo -n "Enter option [1-6]: "
	 read option
    esac
done

echo ""

exit
