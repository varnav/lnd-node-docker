# lnd-node-docker
Lightning daemon (lnd) docker node

Run:

`docker run -d --name lnd-testnet -v lnd-data:/root/.lnd -p 9735:9735 -p 10009:10009 --restart on-failure --security-opt no-new-privileges varnav/lnd-node --bitcoin.active --bitcoin.testnet --bitcoin.node=neutrino --neutrino.connect=faucet.lightning.community --rpclisten=0.0.0.0:10009 --restlisten=0.0.0.0:8080 --tlsextraip=0.0.0.0`

Create a wallet: `docker exec -it lnd-testnet lncli create`
Unlock wallet: `docker exec -it lnd-testnet lncli unlock`

Get admin macaroon (for auth): `docker exec -i lnd-testnet xxd -p /root/.lnd/data/chain/bitcoin/testnet/admin.macaroon`
Details about macaroons: https://github.com/lightningnetwork/lnd/blob/master/docs/macaroons.md

