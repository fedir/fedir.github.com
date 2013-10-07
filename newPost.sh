# Use : ./newPost.sh "post title"
TITLE=$1
DATE=$(date +"%Y-%m-%d")
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
