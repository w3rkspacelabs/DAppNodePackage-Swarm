#!/bin/bash
# from `ethersphere/bee` create a password for use
if ! test -f /home/bee/.bee/password; then
    < /dev/urandom tr -dc _A-Z-a-z-0-9 2> /dev/null | head -c32 > /home/bee/.bee/password
    chmod 0600 /home/bee/.bee/password
    chown bee:bee /home/bee/.bee/password
fi

DEFAULT_BLOCKCHAIN_RPC_ENDPOINT="${DEFAULT_BLOCKCHAIN_RPC_ENDPOINT:-http://nethermind-xdai.dappnode:8545}"
BLOCKCHAIN_RPC_ENDPOINT="${BEE_BLOCKCHAIN_RPC_ENDPOINT}"

if [ -z "${BLOCKCHAIN_RPC_ENDPOINT}" ]; then
    if [ "${BEE_FULL_NODE}" = "true" ] || [ "${BEE_SWAP_ENABLE}" = "true" ]; then
        BLOCKCHAIN_RPC_ENDPOINT="${DEFAULT_BLOCKCHAIN_RPC_ENDPOINT}"
        echo "BEE_BLOCKCHAIN_RPC_ENDPOINT is empty; using ${BLOCKCHAIN_RPC_ENDPOINT}"
    fi
fi

if [  "${BEE_DB_ACTION}" = "none" ]; then
    unset BEE_BLOCKCHAIN_RPC_ENDPOINT
    if [ -n "${BLOCKCHAIN_RPC_ENDPOINT}" ]; then
        exec bee start --blockchain-rpc-endpoint="${BLOCKCHAIN_RPC_ENDPOINT}" ${EXTRA_OPTS}
    fi
    exec bee start ${EXTRA_OPTS}
else
    if [ "${BEE_DB_ACTION}" = "nuke" ]; then
        echo "Executing: bee db nuke"
        bee db nuke --data-dir /home/bee/.bee
        echo "Completed: bee db nuke"
    elif [ "${BEE_DB_ACTION}" = "compact" ]; then
        echo "Executing: bee db compact"
        bee db compact --data-dir /home/bee/.bee
        echo "Completed: bee db compact"
    elif [ "${BEE_DB_ACTION}" = "repair-reserve" ]; then
        echo "Executing: bee db repair-reserve"
        bee db repair-reserve --data-dir /home/bee/.bee
        echo "Completed: bee db repair-reserve"
    elif [ "${BEE_DB_ACTION}" = "info" ]; then
        echo "Executing: bee db info"
        bee db info --data-dir /home/bee/.bee
        echo "Completed: bee db info"
    elif [ "${BEE_DB_ACTION}" = "validate" ]; then
        echo "Executing: bee db validate"
        bee db validate --data-dir /home/bee/.bee
        echo "Completed: bee db validate"
    elif [ "${BEE_DB_ACTION}" = "validate-pin" ]; then
        echo "Executing: bee db validate-pin"
        bee db validate-pin --data-dir /home/bee/.bee
        echo "Completed: bee db validate-pin"
    fi
    echo 'Reset "Perform database action" to "none" in Swarm Package "Config" to start up your bee node.'
    echo "- http://my.dappnode/packages/my/swarm.public.dappnode.eth/config"
    sleep infinity # prevent restarts and repeated destructive db actions
fi
