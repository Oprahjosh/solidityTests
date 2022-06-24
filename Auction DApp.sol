pragma solidity >= 0.7.0 < 0.9.0;

contract auction{

        address beneficiary;
        address highestbidders;
        uint auctionTime;
        uint highestBids;


    event auctionProps(
        address highestBidder,
        uint auctionTime,
        uint highestBid
    );
    event auctionEnding(
        address winner,
        uint highestBid
    );
//deployed to beneficiary address
    constructor(){
        beneficiary == msg.sender;
    }
//auction duration; destroys beneficiary after alloted time
    modifier bidDuration(uint time){
        require(block.timestamp > time,("Bid in progress"));
        _;
    }
   
    function duration(uint _time) public bidDuration(_time) {
        delete beneficiary;
    } 

    function bidEnd(uint time) public {
        duration(time);
       revert ("Auction has ended");     
    }
    //
    mapping (address => uint) public bidMap;
    
    function setBid(address bidders, uint bids) public {
        bidMap[bidders] = bids ;
       uint setBidTime = block.timestamp;
    }
    function newBid(address newBidder,uint bids1) public  {
        bidMap[newBidder] = bids1;
    }
    function highestValues(address newBidder, address bidders) public {
        if (bidMap[newBidder] > bidMap[bidders]){
            highestBids = bidMap[newBidder];
            uint highestBidTime = block.timestamp;
            highestBidTime = auctionTime;
        } else{highestBids = bidMap[bidders] ;}
    }
    //revert if bid is not higher than highest bid
    function reverseBid(address newBidder, address bidders) public  {
        if (bidMap[newBidder] < bidMap[bidders]){
            revert ("Someone has a higher bid already");
            emit auctionProps(newBidder,auctionTime,highestBids);

        }
    }

    //withdrawal pattern library


        function withdrawal(address bidders) public view returns(uint) {
            return bidMap[bidders];
        }

        function auctionEnd(uint time) public {
           //uint bidAmount = bidMap[beneficiary] ;
          bidMap[beneficiary] += highestBids ;
           // msg.value += highestBids;
            bidEnd(time);
        }


}