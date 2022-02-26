#!/bin/sh

# ensure we have at least an empty auth file
export AUTH_FILE=/var/lib/rport/client-auth.json
if [ ! -e $AUTH_FILE ]; then
    mkdir -p `dirname $AUTH_FILE`
    echo "{}" > $AUTH_FILE
    echo "Created empty $AUTH_FILE"
fi


/usr/local/bin/rportd "$@"
