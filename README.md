# USDC Mock Stable Coin

## Package

- id: 0x5f28918574a1cef2e369fc5793f37f893d1223b0afdb3a508e24ef814212cd1a

## Coins Types

- BTC: 0x5f28918574a1cef2e369fc5793f37f893d1223b0afdb3a508e24ef814212cd1a::btc::BTC
- ETH: 0x5f28918574a1cef2e369fc5793f37f893d1223b0afdb3a508e24ef814212cd1a::eth::ETH
- USDC: 0x5f28918574a1cef2e369fc5793f37f893d1223b0afdb3a508e24ef814212cd1a::usdc::USDC
- USDT: 0x5f28918574a1cef2e369fc5793f37f893d1223b0afdb3a508e24ef814212cd1a::usdt::USDT

## Coins Information

### BTC

- TreasuryCap Id: 0x6ceb85cb353438443358ae978a4add754cc6952981b4af937eb665e83a122839
- Coin Metadata Id: 0x0822698b86c6e575c53afb4274ee47159e18565f26bfc85ad3322b594fc9a230
- decimals: 9

### ETH

- TreasuryCap Id: 0xc345a69aff54493c8e70c9587c4b1303966be0920504273ff7d5b60c0cf7f703
- Coin Metadata Id: 0xc92fc8d6cc1d4adfb9b9920b28949660b37146c320c6f599838c1e02256d82ee
- decimals: 9

### USDC

- TreasuryCap Id: 0xa3616b9b7de2faa7bc3a4d08d055de56e2f6876bcf6074d48bbdf87e53640088
- Coin Metadata Id: 0xaff118794e644cecada6237dc29668d0ebded2aabac8135b061c040f8b12a122
- decimals: 6

### USDT

- TreasuryCap Id: 0xe7ef699de84228843b04f3c0f3b880b20dee07f4184dad2a6b3b0d0b7bb9959a
- Coin Metadata Id: 0x06b8bfd4bef612d15bbad074d9d9b8e524493a61f2fa7f1329cb8e322a6aefaa
- decimals: 9

## Treasury Cap

Anyone can call the `0x2::coin::mint` or `mint_and_transfer` function to mint coins.

Please check the Sui Framework coin module [here](https://github.com/MystenLabs/sui/blob/main/crates/sui-framework/packages/sui-framework/sources/coin.move).

- id: 0xfd7af22e047dece7f65d6da60fffdeb603222b36895ee98f80fbd5a4223c71f0
- type: 0x2::coin::TreasuryCap<0x7c39fc21fd58548ac85b56915b5b614501358921b9e1ec4db26864d93890853e::usdc::USDC>
