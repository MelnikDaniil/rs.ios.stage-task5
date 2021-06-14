import Foundation

class StockMaximize {
    
    func countProfit(prices: [Int]) -> Int {
        if prices.count==0 || prices.count==1{
            return 0
        }
        
        var profit = 0
        var maxPricesArray = [Int] ()
        var maxPrice = prices.last
        
        for i in prices.indices.reversed()  {
            
            if maxPrice! < prices[i] {
                maxPrice = prices[i]
                maxPricesArray.append(maxPrice!)
            } else {
            maxPricesArray.append(maxPrice!)
            }
            
        }
        let countOfArray = maxPricesArray.count - 1
        for p in 0...countOfArray {
            profit += maxPricesArray[p] - prices[p]
        }
        return profit
    }
    
}
