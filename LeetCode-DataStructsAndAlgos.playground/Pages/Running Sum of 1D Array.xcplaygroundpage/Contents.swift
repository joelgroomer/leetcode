//: [Previous](@previous)

import Foundation

/*
 Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
 
 Return the running sum of nums.
 */

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        var runningSum = 0
        
        for i in 0..<nums.count {
            runningSum += nums[i]
            result.append(runningSum)
        }
        
        return result
    }
}

// MARK: - Example Cases

print(Solution().runningSum([1, 2, 3, 4]))         // -> [1, 3, 6, 10]
print(Solution().runningSum([1, 1, 1, 1, 1]))      // -> [1, 2, 3, 4, 5]
print(Solution().runningSum([3, 1, 2, 10, 1]))     // -> [3, 4, 6, 16, 17]

// MARK: - Results
// Completed in 4 min
// 12/31/2023

//: [Next](@next)
