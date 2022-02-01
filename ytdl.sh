#!/bin/bash

youtube-dl --no-playlist -f 22 --mark-watched -a $1

# download everything in the file passed in as arg1 with the no playlist option, file format mp4 high quality and mark them as watched
