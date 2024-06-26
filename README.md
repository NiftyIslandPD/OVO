# OVO
Officers versus Outlaws

# Overview
This is an NFT Collection and a corellated site. When you mint you can either be an officer or an outlaw. You cannot hold both in the same wallet. There will be more detailed mint logic and constraints outlined below. 

In the site there is a set of gaming features that pit the 2 factions against one another. 

You earn $LOOT when you visit and sign with you wallet (that holds the NFT).  You can hold it yourself, or add it your factions vault for a bonus.  

But your faction's vault is at risk of attack by the other faction. 

If the number of outlaws checked in for the day is more than 25% (or vice versa) an attack can begin. 

An attacks is series of rudimentary tasks like. a word-jumble or trivia question or whatever. (OR WHATEVER) 

1 attack = 10 hit points.  200 points -> 20 $Loot stolen from your oponents vault into yours. 

# Some Game Logic

## The Tokens

You cannot hold officers and outlaws in the same wallet. this logic will be in the app, not the contract.  We cannot control actions that happen outside our jursdiction, but if you have both in the same wallet your earnings are paused. 

We will not allow you to mint one if you have the other.

The number of tokens you have is a multiplier.  you can earn 10 $LOOT (10 Lt) per day per token by showing up at the site and eth-signing a message.  This is where you have a choice. 

You can keep the 10 Lt (per token) in your personal wallet or contribute it to your factions vault. If you contribute it to the vault your 10 Lt becomes 20 Lt.  100% bonus. 

The token mint is aiming to be in the $50 - 75 range depending on the ETH price. 

This will be an open edition, so no upper limit of the collection size.  but we do want to strike a balance.

### The limits

If the total number of Officers > total number of Outlaws by 5% then we will put the over-bought faction in a paused state until there is a balance.  again app, not contract.

### Assurances

if you keep your $Loot AKA Lt in your personal wallet it is safe from all attack.  you are free from wallet signing and web3 transactions.

If you place the reward in the vault, then you get a bonus but you have to show up to protect it! and to squash the opposing faction and take their LOOT

## The Season

A "season" lasts a Month, from midnight NYC time on the first until 11:59 on the last day of the month.

Leading faction / Highest Vaulted value: +10% of vaulted amount (bonus)
Losing faction / Lower Vaulted value: -10% of vaulted amount (penalty)

At the end of each season the the vault can be emptied into the wallets of the  members of the faction or they can remain vaulted.  

NOTE: this is virtual/web2 ownership for now, but will be on chain in @base when we have rigorously tested our contract code.
