# 💰 ORE Mining Docker

Run ORE Mining within single command using `docker compose`.

## Prerequisites
- Docker

## Getting Started

1. Add your wallet keypair:
   ```bash 
   cd ore-miner
   echo "[your,wallet,private,key]" > wallet.json
   ```  

   Note: You might use `solana-cli` to generate new keypair.
   ```bash
   solana-keygen new
   ```
   Don't forget to transfer some SOL as gas fee for mining transactions. Also you need at least `0.05 SOL` in your wallet balance.

2. Add `.env`
   ```env
   SOL_RPC=https://api.mainnet-beta.solana.com
   PRIORITY_FEE=5000
   THREAD_COUNT=16
   ```

   Note: 
   - It is recommended to use private Solana RPC such as [Helius](https://helius.dev) or [Shyft](https://shyft.to) to prevent public RPC rate-limit.
   - `PRIORITY_FEE` is fee to use for mining transactions. You should set minimum priority fee equal or higher median fee from [Solana gas tracker](https://www.quicknode.com/gas-tracker/solana)
   - Thread count is number of threads to use for mining.

3. Run miner container:
   ```bash
   docker compose up -d
   ```

4. When you want to claim ORE do the same steps as `ore-miner`

## License

Inpsired by [this repo](https://github.com/f3n1b00t/ore-containers) for idea. Also thanks for [HardhatChad](https://github.com/HardhatChad) for brilliant project on Solana! Feel free to use, share and fork this repo!