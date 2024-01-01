//: [Previous](@previous)

import Foundation

extension Array where Element == Int {
    func sumOfSub(_ startIndex: Int, _ endIndex: Int) -> Int? {
        guard startIndex < self.count,
              endIndex < self.count,
              startIndex <= endIndex else {
            return nil
        }
        
        var sum = 0
        for index in startIndex...endIndex {
            sum += self[index]
        }
        
        return sum
    }
}

func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    var j = 0
    var largest: Int?
    
    while j <= nums.count - k {
        let sum = nums.sumOfSub(j, k - 1 + j)
        if sum != nil {
            if largest == nil || largest! < sum! {
                largest = sum!
            }
        }
        
        j += 1
    }
    
    if let largest {
        return Double(largest) / Double(k)
    } else {
        return 0.0
    }
}

findMaxAverage([1, 12, -5, -6, 50, 3], 4)
findMaxAverage([5], 1)

// 12/23/2023

//: [Next](@next)
