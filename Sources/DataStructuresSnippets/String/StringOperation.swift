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
}
