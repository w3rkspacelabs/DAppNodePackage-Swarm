#!/bin/bash
# from `ethersphere/bee` create a password for use
if ! test -f /home/bee/.bee/password; then
    < /dev/urandom tr -dc _A-Z-a-z-0-9 2> /dev/null | head -c32 > /home/bee/.bee/password
    chmod 0600 /home/bee/.bee/password
    chown bee:bee /home/bee/.bee/password
fi

if [ "${BEE_NUKE_DB}" = "true" ]; then
    exec bee db nuke --data-dir /home/bee/.bee
else
    exec bee start ${EXTRA_OPTS}
fi
