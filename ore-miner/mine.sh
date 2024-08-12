#!/bin/sh

rpc=${SOL_RPC:-"https://api.mainnet-beta.solana.com"}
priority_fee=${PRIORITY_FEE:-"5000000"}
thread_count=${THREAD_COUNT:-"16"}
command="ore --rpc $rpc --keypair /app/wallet.json --priority-fee $priority_fee mine --cores $thread_count"

while true; do
    $command
    if [ $? -ne 0 ]; then
        echo "Error while handling command, retrying.."
    fi
done
