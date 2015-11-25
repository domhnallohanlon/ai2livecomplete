#NOTE: MAKE SURE YOU MAKE .sh FILES EXECUTABLE; e.g. chmod +x *.sh

#!/bin/bash
# Copyright 2009 Google Inc. All Rights Reserved.
#
# Launches the Development AppServer.  This utility allows developers
# to test a Google App Engine application on their local workstation.
#
[ -z "${DEBUG}" ] || set -x  # trace if $DEBUG env. var. is non-zero
#SDK_BIN="`dirname "$0" | sed -e "s#^\\([^/]\\)#${PWD}/\\1#"`" # sed makes absolute
SDK_BIN=${PWD}/AppEngine
echo "SDK_BIN is: $SDK_BIN"
SDK_LIB="$SDK_BIN/lib"
JAR_FILE="$SDK_LIB/appengine-tools-api.jar"


WEB_APP="--port=8888 --address=0.0.0.0 AIServer"
if [ ! -e "$JAR_FILE" ]; then
    echo "$JAR_FILE not found"
    exit 1
fi

java -ea -cp "$JAR_FILE" \
  com.google.appengine.tools.KickStart \
  com.google.appengine.tools.development.DevAppServerMain "$@" $WEB_APP
