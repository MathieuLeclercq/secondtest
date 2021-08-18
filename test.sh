#!/bin/sh

InputFunc()
{
  echo " Name? "
  read NAME
  echo " Number?"
  read NUMBER 
  echo "email address?"
  read EMAIL
}

writeFunc()
{
    #echo "$1:$2:$3" >> addressbook.txt
    echo "$NAME:$NUMBER:$EMAIL" >> addressbook.txt

}

findFunc()
{
    printf "Please type the name or information that you want to search for.\n"
    read SEARCHVAR
    grep -i $SEARCHVAR addressbook.txt
}

removeFunc()
{
    echo "TODO"
}

menu()
{
    while [ "$CHOICE" != "exit" ]
    do
        printf "\nType 1 if you want to search address book."
        printf "\nType 2 if you want to add an entry."
        printf "\nType 3 if you want to remove an entry."
        printf "\nType \"exit\" to exit.\n"
        read CHOICE
        case $CHOICE in 
        1)
            findFunc;;
        2)
            InputFunc
            writeFunc $NAME $NUMBER $EMAIL;;
        3)
            removeFunc;;
        "exit")
            printf "Goodbye.\n";;
        *)
            printf "\nError. Please try again.\n"
        
            
        esac
    done
}



### Main script starts here 
if [ ! -f $BOOK ]; then
  echo "Creating $BOOK ..."
  touch $BOOK
fi

menu