---
title: How Mining fees Work in Bitcoin
date: 2021-04-04 07:23:12 +/-TTTT
pin: true
categories: [bitcoin]
tags: [bitcoin, mining, fees, transaction, network]
---

Here's an overview of what happens when you make a transaction:

When you broadcast a transaction, it must be sent from a node to all its peers. Each transaction has a fee rate measured in sats per byte. Bitcoin allows you to choose whatever fee you want! However, some wallets do not let you choose a fee.

For example, if your transaction takes up 269 bytes of space on the block chain, and you set a 1 sat/byte fee, then the total fee for your transaction is 269 sats.

269 bytes * 1sat/byte = 269 sats

The size of the transaction is not the same as the value of the transaction. Sending 0.01 BTC costs the same as sending 10,000 BTC.

Your transaction then propagates thru the network and is stored in each node's mempool. The mempools contain all the transactions that are waiting to be confirmed. When a block is found, the miner picks the transactions with the highest fees and stuffs them in the block.

The miner gets to keep the fees for all the transactions it is able to add to a block.

A block can only hold about 2 MB of transaction data. So if there's lot of transactions in the mempools, you better set a higher fee rate to get your transaction confirmed quickly.

Otherwise, it could take weeks for your transaction to confirm. Worst case scenario, the nodes purge your transaction from their mempools because its taking up too much space, and they need to make room for others who are willing to pay a higher fee.

If your transaction gets purged, you have to rebroadcast it from your wallet. No coins are lost, not even the fee. It never really left your wallet!

The hope is that over time, the value of BTC transactions will rise. Thus, people moving BTC on chain will be fine with paying high fees. Remember it costs the same fee to move $5 as it costs to move $1Billion.

Paying $100 fee to move $5 is ridiculous. Paying $100 to move $1Billion is a great deal!

As more and more payment activity happens on seconds layer networks like the lightning network, the baseblockchainn will become a settlement layer for high value transactions. And the fee market will continue to reward miners for securing it.
