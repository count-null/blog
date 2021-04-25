---
title: The Security Optimization of Proof of Work
date: 2021-04-25 11:33:27
categories: [bitcoin]
tags: [proof of work, bitcoin, energy, asics, security]
---

Bitcoin will be successfully attacked because it's security is trending down despite rising hashrate. It must suffer an assault (perhaps multiple blows) in order to correctly price the minimum cost of security. Proof-of-work systems with a decreasing issuance schedule are performing a security budget optimization in real-time.

Let me explain...

## Proof-of-Work Incentive Structure

Proof-of-work blockchains are secured by a global network of computers that perform energy-intense calculations. These miners are rewarded proportional to the amount of work (hashes) they produce to secure the asset they are mining. 

Bitcoin miners recieve payment from two sources. 

1. **The block reward** - represents newly created bitcoin rewarded to miners as part of bitcoin's predictable supply schedule. 

2. **Transaction fees** - the fees collected from all transactions that the miner includes in a block

An attacker with **substantial hashrate** could choose to hijack the network. They could delay payments by mining empty blocks (choosing not to collect transaction fees) or they could double-spend transactions made during their attack. 

The attack would need to be sustained to be effective, however, it's important to note that the adversary would not be able to alter old transactions or create new coins. 

Proof-of-work is designed to make attacks costly, and cooperation rewarding.

## An Alternative Measure for Proof-of-Work Security

Independent analyst, energy FUDster, and shitcoiner [Morgan Bennett](https://twitter.com/MorganTBennett) shared this chart which models the security of proof-of-work blockchains. 

![Proof of Work Network Security](/assets/img/pow-network-security.jpg)

Chart source: [Tweet from Bennett](https://twitter.com/MorganTBennett/status/1386023538625236997)

At first glance, this chart seems counterintuitive to anyone who follows bitcoin network statistics. It clearly shows a downward trend in security for all proof-of-work chains even though hashrate (for most networks) has been on the rise.

Perhaps this chart was intended to spread FUD about proof-of-work chains by intentionally framing them as doomed to fail. However, I think this data reveals something interesting about Bitcoin's design that could become relevant once it faces a worthy adversary.

## Hashrate Alone is not Security

Here's a chart showing the clear and steady increase in Bitcoin's hashrate, for example:

![Bitcoin Hashrate from 2010 to April 2021](/assets/img/btc-hashrate-april-2021.png)

Chart source: [CoinWars](https://coinwars.com/mining/bitcoin/hashrate-chart)

If an attacker needs "substantial hashrate", doesn't an increase in hashrate make the network more secure?

Not necessarily. 

If all miners controlling hashrate are assumed to always act in good faith, then an attacker would need to bring on additional hashrate to outcompete the good faith miners.

However, this assumption is unrealistic. It is more likely that an attacker would bring hash online and cooperatively mine until the opportunity to attack becomes feasible.

This is why Bennett defines network security as the security budget divided by the network's market cap. 

Let's break down what that means and why it's a better measure for security than hashrate.

## A Definition of Network Security

The security budget is what is paid to miners who act in good faith. Namely, the block reward plus transaction fees. 

In theory, it is more appealing to attack coins with higher market caps per unit of cost that an attacker might spend. By dividing the reward paid to good faith miners by the market cap, we capture this relationship and arrive at a figure which represents the ongoing cost to attack the network.

This security calculation could explain why shitcoins don't get 51% attacked very often despite their meager hashrates.

It also introduces another sly roundabout way that bitcoin protects itself from existential threats. Bitcoin's valuation serves as a deterrent to attack, only increasing to levels it can sustain with the current levels of security.

This cost trends down for two reasons. 

1. **Market cap rises** - due to number go up technology

2. **The block reward decreases** - predictably with the halvings baked in to Bitcoin's supply schedule. 

![Bitcoin's Predictable Supply Schedule](/assets/img/bitcoin-inflation-chart.png)

Chart source: [bitcoinblockhalf.com](https://www.bitcoinblockhalf.com/)

If we expect bitcoin to pump forever and halvings to continue until all 21 million coins are mined, then for security to rise, transaction fees must also rise.

## Will Fees Rise?

This is the 100 million satoshi question. We've seen fees rise significantly during bull markets as block space becomes a hot commodity. Interestingly, the fee spike helps maintain security in the face of an increasing market cap. 

The chain must be reserved for high-value settlement if fees are to rise. Additionally, adoption must grow so that more high-value settlements are demanded. Second layer scaling solutions like the Lightning Network are promising instant settlement of low-value transactions by "batching" them in high-value onchain transactions.

## The Cost to Secure the Price

However, security doesn't necessarily need to rise indefinitely. It only needs to stay above the minimum level required to prevent successful attacks. If the network were over secured, this would correspond to an undervaluation of the asset (low prices) or unnecessarily high fees. 

If we view Bitcoin as an efficient system built on true price discovery of free markets, then this theoretical level of minimum security is unknowable until Bitcoin is successfully attacked.

Therefore the downward trend in proof-of-work network security is not a path to utter devastation, but rather an optimization of resources seeking to naturally discover the true cost to sufficiently secure the network. 

A successfull attack will likely crash the price, causing the security to rise dramatically, preventing the attacker from sustaining the assault. After which point, any price increase must correspond to an increase in fees to maintain a minimum security level. 

