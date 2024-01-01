//: [Previous](@previous)

import Foundation

class Solution {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var start = 0
        var end = nums.count - 1
        
        // Edge case - array length is 1
        if start == end {
            if nums[0] == 1 || k == 1{
                return 1
            } else {
                return 0
            }
        }
        
        var longest = 0
        for i in 0...end {
            var j = i
            var remainingZeros = k
            var longestThisRound = 0
            
            if nums.count - j <= longest { break }
            while j <= end {
                if nums[j] == 0 {
                    if remainingZeros > 0 {
                        remainingZeros -= 1
                        j += 1
                        longestThisRound += 1
                    } else {
                        break
                    }
                } else {
                    j += 1
                    longestThisRound += 1
                }
            } //: while
            
            longest = longestThisRound > longest ? longestThisRound : longest
        } //: for
        
        return longest
    }
}

print(Solution().longestOnes([1,1,1,0,0,0,1,1,1,1,0], 2)) // 6
print(Solution().longestOnes([0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], 3)) // 10
print(Solution().longestOnes([1,1,1,0,0,0,1,1,1,1], 0)) // 4
print(Solution().longestOnes([0], 1)) // 1


// 12/25/2023

//: [Next](@next)
