#!/bin/sh

rpc=${SOL_RPC:-"https://api.mainnet-beta.solana.com"}
command="ore --rpc $rpc --keypair /app/wallet.json claim"

while true; do
    $command
    if [ $? -ne 0 ]; then
        echo "Error while handling command, retrying.."
    fi
done