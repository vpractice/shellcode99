#!/bin/bash
FILENAME="/etc/passwd"
MATCH=0
while IFS=: read -r username password userid groupid comment homedir cmdshell
do
  if [  $1 == $username ]; then		
       echo "$username, $userid, $comment $homedir"
       MATCH=1
  fi
done < $FILENAME

if [[ "${MATCH}" -eq 0 ]]
then
	echo "No User Found"
fi

