module digital_advertisment::advertisment {
    
    use std::signer;    
    use aptos_framework::account;
    use std::vector;
    use aptos_framework::managed_coin;
    use aptos_framework::coin;
    use aptos_std::type_info;

    // All the information required for advertisment
    struct advertismentSchedule has key,store
    {
        advertiser: address,  
        publisher: address,
        oracle: address,  
        targetViews:u64,   //The times for unlocked
        paymentAmount:u64, //The corresponding amount for getting unlocked
        // bool public isCompleted = false,
    }

    //defines
    const ONLY_ORACLE_CONFIRM_VIEWS:u64=0;
    const TARGET_VIEWS_NOT_ACHIEVED:u64=1;
    const PAYMENT_ALREADY_TRIGGERED:u64=2;
    

    //Create a event that must be triggered to notify when payment is done

    // Constructor to initialize the contract
    struct advertismen has key,store {
        advertiser : _advertiser,
        publisher : _publisher,
        oracle : _oracle,
        targetViews : _targetViews,
        paymentAmount : _paymentAmount,
    }

    // Function to confirm that the publisher has achieved the predetermined targets
     public entry fun confirmViews<CoinType>(
        assert!(msg.sender == oracle, ONLY_ORACLE_CONFIRM_VIEWS);
        assert!(views >= targetViews, TARGET_VIEWS_NOT_ACHIEVED);
        assert!(!isCompleted, PAYMENT_ALREADY_TRIGGERED);

        // Trigger the payment to the publisher

     )

    
}