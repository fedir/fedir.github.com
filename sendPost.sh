if [ "$1" != "" ]
then
    MESSAGE="$@"
else
    MESSAGE="Minor modification"
fi
git add .;git commit -a -m "$MESSAGE";git push
