#!/bin/bash

# Arguments defined as $1 $2 $3 and so on. But ${10} when 2 digits
FILENAME=$1.sh

# Check if file exists: 2 ways
# if test -e $FILENAME OR
while [[ -e $FILENAME ]] 
do
  echo -n "file already exists, are you sure you would like to overwrite? (y/n)"
  read ANSWER
  case $ANSWER in
    y|Y|[yY][eE][sS])
      break
      ;;
    n|N|[nN][oO])
      read -p "enter the new filename" FILENAME
      FILENAME=$FILENAME.sh
      ;;
  esac
done
echo "#!/bin/bash" > $FILENAME
chmod +x $FILENAME
vim $FILENAME
