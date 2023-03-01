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

    //Create a event that must be triggered to notify when payment is done

    // Constructor to initialize the contract
    struct advertismen has key,store,(address _advertiser, address _publisher, address _oracle, uint _targetViews, uint _paymentAmount) {
        advertiser = _advertiser;
        publisher = _publisher;
        oracle = _oracle;
        targetViews = _targetViews;
        paymentAmount = _paymentAmount;
    }

    // Function to confirm that the publisher has achieved the predetermined targets
     public entry fun confirmViews<CoinType>(
        assert!(msg.sender == oracle, "Only oracle can confirm the views");
        assert!(views >= targetViews, "The target views have not been achieved");
        assert!(!isCompleted, "Payment has already been triggered");

        // Trigger the payment to the publisher
        
     )

    
}