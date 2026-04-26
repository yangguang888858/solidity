// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract EnumOperators {
    enum OrderStatus {
        Created,
        Paid,
        Shipped,
        Deliveried,
        Cancelled
    }

    OrderStatus public currentStatus;
    function createOrder() public  returns(OrderStatus){
        currentStatus = OrderStatus.Created;
    }
    function payOrder() public  returns(OrderStatus){
        require(currentStatus==OrderStatus.Created,unicode"订单未创建");
        currentStatus=OrderStatus.Paid;
    }
     function shipOrder() public  returns(OrderStatus){
        require(currentStatus==OrderStatus.Paid,unicode"订单未支付");
        currentStatus=OrderStatus.Shipped;
    }
     function deliveryOrder() public  returns(OrderStatus){
        require(currentStatus==OrderStatus.Shipped,unicode"订单未运输");
        currentStatus=OrderStatus.Deliveried;
    }
    function isPaid() public view returns(bool){
        return currentStatus==OrderStatus.Paid;
    }

    function enum2uint(OrderStatus s) public pure returns(uint){
        return uint(s);
    }

        function uint2enum(uint i) public pure returns(OrderStatus){
         require(i<=uint(OrderStatus.Cancelled),unicode"无效的枚举类型");
        return OrderStatus(i);
    }
}
