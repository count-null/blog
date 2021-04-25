---
title: Batch Open Lightning Channels with Balance of Satoshis (BoS)
date: 2021-04-07 13:09:46
categories: [bitcoin]
tags: [lightning, bitcoin, fees, node management, channels, optimization, batching]
---

If you operate a Lightning Network node for profit, one of your biggest costs are on chain channel opening fees. Exchanges have been batching bitcoin transactions for years. Batching transactions is an obvious and easy way to save significantly on fees.

![space savings by batching bitcoin transactions](/assets/img/btc-batching-savings.png)

Read David Harding's post: [Saving up to 80% on Bitcoin transaction fees by batching payments
](https://bitcointechtalk.com/saving-up-to-80-on-bitcoin-transaction-fees-by-batching-payments-4147ab7009fb)

Wouldn't it be great if we could get the same cost savings from opening Lightning Channels! Thanks to Alex Bosworth's work on [Balance of Satoshis](https://github.com/alexbosworth/balanceofsatoshis), we can! 

Here's how to do it:

### 1. Ensure you have LND v0.12.0 (or higher) installed

`bos` needs this version so it can spend funds directly from the LND onchain wallet.

### 2. Install Balance of Satoshis 

This guide uses `bos v8.0.2`

### 3. Collect a list of node public keys

These are the nodes you want to open channels to. Also, make sure you have enough BTC in your onchain LND wallet to fund all these channels. 

### 4. Run the `bos open` command 

Chain together your public keys from Step 3 like this:

`bos open <pubkey> --amount <sats> <pubkey2> --amount <sats> ...`

**WARNING**: When you run this command finishes running, you have started a10-minutee timer for yourself. If you attempt to complete the remaining steps AFTER 10 MINUTES HAVE PASSED, YOU RISK LOSING FUNDS! You can safely cancel the operation by pressing `ENTER`.

When you run this command, `bos` will attempt to connect to each node using the pubkey you provided. It will negotiate a channel open contract address for each node. When it's complete, it will print some text like this:

```
Addresses:

bc1q8f573zcaxtrdmh50muwmn5yly4wka4fej67xm5jxljed6wuu4yzq52gr0t, 0.01000000

bc1qpyz6lausga2s7j2wld8a6m6z722zz4gwkk5cc2hhkq0wj49xfahsck9ajc, 0.01000000 
```

This is an instruction for your batch transaction. The command will wait for you to paste the signed transaction hex that pays these addresses with the specified amount. Your 10 minute timer has begun! If you cannot paste the required hex within 10 mins, simply press `ENTER` without entering anything to cancel.

**NOTE**: All nodes you are trying to connect with need to be online and responsive. If you encounter errors, try removing one of the pubkeys until you identifywhichh node is causing the problem. 

### 5. Use `bos fund` to create the transaction 

In a new terminal, run `bos fund` to create a pay-to-many transaction using funds in your LND wallet. 

`bos fund bc1q8f573zcaxtrdmh50muwmn5yly4wka4fej67xm5jxljed6wuu4yzq52gr0t 1000000 bc1qpyz6lausga2s7j2wld8a6m6z722zz4gwkk5cc2hhkq0wj49xfahsck9ajc 1000000`

This command will output the signed transaction hex. 

**NOTE**: be sure to convert the amounts to sats for `bos fund` since `bos open` shows them as BTC

**NOTE**: `bos fund` allows you to set a custom fee. Use this to save even more on your channel opens! Keep in mind that low fees will take longer to confirm. Use [Mempool.space](https://mempool.space) to pick a reasonable fee.  


### 6. Paste the signed HEX

Simply copy the signed hex from `bos fund` and paste it in the other terminal where `bos open` is waiting.

### 7. Broadcast the batch open transaction

Press `ENTER` tsubmitit the signed hex to `bos open`

Ieverythingng works, you should see a transaction id that you can use to monitor the confirmation of your channels!

Congrats! You've just saved significantly by batch opening your channels using Balance of Satoshis!
