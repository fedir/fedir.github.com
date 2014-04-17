# Use : ./newPost.sh "post title"

# Usage instruction function
function usage {
	if [ $# -gt 0 ] ; then
		echo
		echo "$*"
		echo
	fi
	echo 'usage: newPost.sh [--title "New article" --date 2014-04-17]  | [-h]]'
}

# Script options analyze
while [ "$1" != "" ]; do
	case $1 in
		--title )            shift
			TITLE=$1
			;;  
		--date )              shift
			DATE=$1
			;;  
		-h | --help )           usage
			exit
			;;  
		* )                     usage "The option is not recognized"
			exit 1
	esac
	shift
done

# Domain exceptions
if [ -z "$TITLE" ]
then
	echo "Title not specified"
	exit 1
fi

if [ -z "$DATE" ]
then
	DATE=$(date +"%Y-%m-%d")
fi

TITLE_NORMALIZED=$(echo $TITLE | iconv -f utf8 -t ascii//TRANSLIT//IGNORE |  tr "[:upper:]" "[:lower:]"  | tr ", '" "---")
FILENAME="$DATE-$TITLE_NORMALIZED.md"

# Pull the repository
git pull

# Make new article
POST=$(cat <<POST
---
comments: true
date: $DATE
layout: post
slug: $TITLE_NORMALIZED
title: $TITLE
categories:
- web
tags:
- blog
---

content
POST
)
printf "%b\n" "$POST" > _posts/$FILENAME

# Show new article's path
echo "_posts/$FILENAME"

# Show git helper commands
echo "git add ."
echo "git commit -m \"$TITLE\""
echo 'git push'
