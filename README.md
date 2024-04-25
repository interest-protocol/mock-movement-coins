# USDC Mock Stable Coin

## Package

- id: 0x7c39fc21fd58548ac85b56915b5b614501358921b9e1ec4db26864d93890853e
- type: 0x7c39fc21fd58548ac85b56915b5b614501358921b9e1ec4db26864d93890853e::usdc::USDC

## Metadata

- id: 0x2b505b8c42009660e341f0bf5bd552de0efeb1ab0c328101170956108e0ab9ac
- type: 0x2::coin::CoinMetadata<0x7c39fc21fd58548ac85b56915b5b614501358921b9e1ec4db26864d93890853e::usdc::USDC>
- decimals: 6
- name: USD Coin
- symbol: USDC

## Treasury Cap

Anyone can call the `0x2::coin::mint` or `mint_and_transfer` function to mint coins.

Please check the Sui Framework coin module [here](https://github.com/MystenLabs/sui/blob/main/crates/sui-framework/packages/sui-framework/sources/coin.move).

- id: 0xfd7af22e047dece7f65d6da60fffdeb603222b36895ee98f80fbd5a4223c71f0
- type: 0x2::coin::TreasuryCap<0x7c39fc21fd58548ac85b56915b5b614501358921b9e1ec4db26864d93890853e::usdc::USDC>
