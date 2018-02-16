geth --identity "PashaNet" --rpc --rpcport "8080" --rpccorsdomain "*" --datadir "~/geth_private/datadir" --port "30303" --nodiscover --rpcapi "db,eth,net,web3" --networkid 6667 init ~/geth_private/CustomGenesis.json

geth --autodag --identity "PashaNet" --rpc --rpcport "8080" --rpccorsdomain "*" --datadir "~/geth_private/datadir" --port "30303" --nodiscover --rpcapi "db,eth,net,web3" --networkid 6667 console

geth attach --identity "PashaNet" --rpc --rpcport "8080" --rpccorsdomain "*" --datadir "~/geth_private/datadir" --port "30303" --nodiscover --rpcapi "db,eth,net,web3" --networkid 6667 console
