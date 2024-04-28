public class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode?

    public init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    public var head: LinkedListNode<T>?

    public init() {}

    // Methods to add, remove nodes etc
    
    /*You are given an array prices where prices[i] is the price of a given stock on the ith day.
    Find the maximum profit you can achieve. You may complete at most two transactions.
    Note: You may not engage in multiple transactions simultaneously (i.e., you must sell the stock before you buy again).

    Example 1:
    Input: prices = [3,3,5,0,0,3,1,4]
    Output: 6
    Explanation: Buy on day 4 (price = 0) and sell on day 6 (price = 3), profit = 3-0 = 3.
    Then buy on day 7 (price = 1) and sell on day 8 (price = 4), profit = 4-1 = 3.
    Example 2:
    Input: prices = [1,2,3,4,5]
    Output: 4
    Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
    Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are engaging multiple transactions at the same time. You must sell before
    buying again.
    Example 3:
    Input: prices = [7,6,4,3,1]
    Output: 0
    Explanation: In this case, no transaction is done, i.e. max profit = 0.*/
    
    public func maxProfit(_ prices: [Int]) -> Int {
        
        if prices.count < 2 {
            return 0
        }
        
        var firstBuy = Int.max
        var firstProfit = 0
        
        var secondBuy = Int.max
        var secondProfit = 0
        
        for price in prices {
            firstBuy = min(firstBuy, price)
            firstProfit = max(firstProfit, price - firstBuy)
            
            secondBuy = min(secondBuy, price - firstProfit)
            secondProfit = max(secondProfit, price - secondBuy)
        }
        
        return secondProfit
    }
    
    
    /*
     You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you
     from robbing each of them is that adjacent houses have security systems connected and it will automatically contact the police if two adjacent houses
     were broken into on the same night.
     Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting
     the police.
     
     Example 1:
     Input: nums = [1,2,3,1]
     Output: 4
     Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
     Total amount you can rob = 1 + 3 = 4.
     Example 2:
     Input: nums = [2,7,9,3,1]
     Output: 12
     Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1).
     Total amount you can rob = 2 + 9 + 1 = 12.
     */
    
    public func rob(_ houses: [Int]) throws -> Int{
        
        var plans = Array(repeating: 0, count: houses.count)
        
        plans[0] = houses[0]
        plans[1] = max(houses[0], houses[1])
        
        for attempt in 2..<houses.count {
            plans[attempt] = max(plans[attempt-1], houses[attempt] + plans[attempt - 2])
        }
        
        return plans[houses.count - 1]

    }
}
