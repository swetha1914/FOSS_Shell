#!/bin/bash

echo "The given file is: "
cat name.txt
echo -e "\n"
read -p "Enter Question number (1-10) to excecute: " qno
case $qno in
    1)
        echo -e "\nQ1. Details starting with p"
        echo -e "\nAnswer:\n"
        cat name.txt  |  awk '$1 ~ /^ *p/'
    ;;

    2)
        echo -e "\nQ2. The name alone starting with p"
        echo -e "\nAnswer:\n"
        cat name.txt  |  awk '$1 ~ /^ *p/ {print $1}'
    ;;

    3)
        echo -e "\nQ3. Age of name of friends starting with p"
        echo -e "\nAnswer:\n"
        cat name.txt  |  awk '$1 ~ /^ *p/ {print $2}'
    ;;

    4)
        echo -e "\nQ4. Name starting with p and ending with a"
        echo -e "\nAnswer:\n"
        cat name.txt  |  awk '$1 ~ /^ *p.*a$/ {print $1}'
    ;;

    5)
        echo -e "\nQ5. Names starting with p or with a"
        echo -e "\nAnswer:\n"
        cat name.txt  |  awk '$1 ~ /^ *p|^ *a/ {print $1}'
    ;;

    6)
        echo -e "\nQ6. Names having age>40"
        echo -e "\nAnswer:\n"
        cat name.txt  |  awk '$2>40 {print $1}'
    ;;

    7)
        echo -e "\nQ7. Name not starting with p"
        echo -e "\nAnswer:\n"  
        cat name.txt  |  awk '$1!~ /^ *p/ {print $1}'
    ;;

    8)
        echo -e "\nQ8. Name starting with p or ending with a"
        echo -e "\nAnswer:\n" 
        cat name.txt  |  awk '$1!~ /^ *p|^ *a/ {print $1}'


    ;;

    9)
        echo -e "\nQ9. Name starting with p and age>26"
        echo -e "\nAnswer:\n"
        cat name.txt  |  awk '$1 ~ /^ *p/ && $2>26 {print $1}'

    ;;

    10)
        echo -e "\nQ10. Name starting with aeiou"
        echo -e "\nAnswer:\n" 
        cat name.txt  |  awk '/^a|^e|^i|^o|^u/ {print $1}'
 
    ;;

    *)
        echo -e "\nInvalid input Qno(1-10)\n"
    ;;
esac