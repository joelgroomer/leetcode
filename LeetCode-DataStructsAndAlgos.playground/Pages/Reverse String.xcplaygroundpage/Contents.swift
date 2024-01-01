//: [Previous](@previous)

import Foundation

class Solution {
    static func sortedSquares(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        
        for num in nums {
            result.append(num * num)
        }
        
        return result.sorted()
    }
}

print(Solution.sortedSquares([-4,-1,0,3,10]))
print(Solution.sortedSquares([-7,-3,2,3,11]))

// 1/22/2023

//: [Next](@next)
