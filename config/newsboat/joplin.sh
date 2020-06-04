url=$1
title=`grep "Title:" /tmp/tmp.txt | cut -d' ' -f2-10`

body=`sed ':a;N;$!ba;s/\n/\\\n/g ; \
	s/Feed/### Feed/ ; s/Title/### Title/ ; \
	s/Author/### Author/ ; s/Date/### Date/'  /tmp/tmp.txt`

curl -H "Authorization: $JOPLIN_APIKEY" -d  "{ \"title\": \"$title\", \"body\": \"$body\", \"parent_id\": \"$JOPLIN_NOTEID\"}" http://localhost:41184/notes 

rm /tmp/tmp.txt

echo "Saved $1"
