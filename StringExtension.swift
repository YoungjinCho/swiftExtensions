//
//  StringExtension.swift
//
//  Created by vivace on 2017. 9. 13..
//  Copyright © 2017년 vivace. All rights reserved.
//

import UIKit

extension String {
    /**
     Simplify the space.
     Front & Rear space : Remove all
     Space between the characters : Shorten to one space
     Example: "   " -> ""
              "Hi " -> "Hi"
              "Hello  World!" -> "Hello World!"
              "  V   I    V A    CE   " -> "V I V A CE"
     */
    func spaceSimplify() -> String {
        let stringArr = self.components(separatedBy: " ")
        var titleArr: [String] = []
        var titleIndex = 0
        
        for i in 0..<stringArr.count {
            if stringArr[i].characters.count > 0 {
                titleArr.append(stringArr[i])
                titleIndex += 1
            }
        }
        
        var title = ""
        for i in 0..<titleIndex {
            title += titleArr[i] + " "
        }
        if !title.isEmpty {
            title.remove(at: title.index(before: title.endIndex))
        }
        return title
    }
}
