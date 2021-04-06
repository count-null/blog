#!/bin/bash

DIR=_posts/

DATE=$(date '+%Y-%m-%d')
TIME=$(date '+%H:%M:%S')
echo Enter working post title: 

read raw_title
lowercase_title=$(sed -e 's/\(.*\)/\L\1/' <<< "$raw_title")
TITLE=${lowercase_title// /-}
POST=$DIR$DATE-$TITLE.md
tee -a $POST << END
---
title: $raw_title
date: $DATE $TIME
categories: []
tags: []
---

END
vim $POST
