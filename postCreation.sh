cat listing | while read POST; do 

TEMPLATE=$(cat <<EOF
---\n
comments: true\n
date: $DATE\n
layout: post\n
slug: $SLUG\n
title: $TITLE\n
teaser: $TEASER\n
categories:\n
- web\n
tags:\n
- article\n
---\n
EOF
)
echo -e $TEMPLATE > _posts/$POST; 

done
