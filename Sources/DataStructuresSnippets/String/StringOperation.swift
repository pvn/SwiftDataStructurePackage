//
//  StringOperation.swift
//  
//
//  Created by Praveen Kumar on 26/04/24.
//

import Foundation

public class StringOperation {
    
    public init() {}
    
    
    public func revereString(_ str: String) -> String {
        var reverse = ""
        for eachCharacter in str {
            reverse = String(eachCharacter) + reverse
        }
        return reverse
    }
    
    public func isPallindrome(_ txt: String) -> Bool{
        let count = txt.count
        for i in 0..<count/2 {
            if txt.index(txt.startIndex, offsetBy: i) != txt.index(txt.endIndex, offsetBy: -i - 1) {
                return false
            }
                
        }
        return true
    }
    
    public func generateCombinations(_ nums: [Int], combinationSize: Int) -> [[Int]]  {
        
        var resultsCombo = [[Int]]()
        var tuple = [Int]()
        
        func backTrack(_ start: Int) {
            if tuple.count == combinationSize {
                resultsCombo.append(tuple)
            }
            return
        }
        
        for i in nums {
            tuple.append(nums[i])
            backTrack(i+1)
            tuple.removeLast()
        }
        
        backTrack(0)
        
        return resultsCombo
    }
}
