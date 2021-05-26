#!/bin/bash
FILENAME="/etc/passwd"
read -p "Please Enter User Name to search" USERNAME
MATCH=0
while IFS=: read -r username password userid groupid comment homedir cmdshell
do
  if [  $USERNAME == $username ]; then		
       echo "$username, $userid, $comment $homedir"
       MATCH=1
  fi
done < $FILENAME

if [[ "${MATCH}" -eq 0 ]]
then
	echo "No User Found"
fi

