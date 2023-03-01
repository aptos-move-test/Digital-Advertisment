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
    }

    //Create a event that must be triggered to notify when payment is done

    // Constructor to initialize the contract


    // Function to confirm that the publisher has achieved the predetermined targets


    
}