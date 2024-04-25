
module usdc::usdc {
  use sui::balance::Supply;
  use sui::coin::{Self, Coin};
  use sui::table::{Self, Table};
  use sui::url::new_unsafe_from_bytes;

  const MINT_AMOUNT: u64 = 500000000; // 500 USDC
  const EWaitOneDay: u64 = 0;

  public struct USDC has drop {}

  public struct Faucet has key {
    id: UID,
    supply: Supply<USDC>,
    epoch_table: Table<address, u64>
  }

  fun init(witness: USDC, ctx: &mut TxContext) {
      let (mut treasury_cap, metadata) = coin::create_currency<USDC>(
            witness, 
            6, 
            b"USDC",
            b"USD Coin", 
            b"USD Stable Coin by Circle", 
            option::some(new_unsafe_from_bytes(b"https://imagedelivery.net/cBNDGgkrsEA-b_ixIp9SkQ/usdc.png/public")), 
            ctx
        );

      transfer::public_transfer(treasury_cap.mint(1000000000000, ctx), ctx.sender());  

      transfer::share_object(Faucet { id: object::new(ctx), supply: treasury_cap.treasury_into_supply(), epoch_table: table::new(ctx) });
      transfer::public_freeze_object(metadata);
  }

  public fun mint(controller: &mut Faucet, ctx: &mut TxContext): Coin<USDC> {
    let sender = ctx.sender();
    let epoch = ctx.epoch();
    if (!controller.epoch_table.contains(sender)) {
      controller.epoch_table.add(sender, epoch);
      return coin::from_balance(controller.supply.increase_supply(MINT_AMOUNT), ctx)
    };

    let last_epoch = controller.epoch_table.borrow_mut(sender);

    assert!(epoch > *last_epoch, EWaitOneDay);

    *last_epoch = epoch;

    coin::from_balance(controller.supply.increase_supply(MINT_AMOUNT), ctx)
  }
}

