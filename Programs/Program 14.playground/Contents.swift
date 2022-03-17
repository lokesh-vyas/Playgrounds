import UIKit

public class ListNode {

    public var val: Int

    public var next: ListNode?

    public init(_ val: Int) {

        self.val = val

        self.next = nil

    }

}

// 1 -> 4 -> 5 -> 6 -> 2 -> 9 -> 5
// 1 -> 4 -> 5 -> 6 -> 2 -> 9 -> nil

// SlowNode , fastNode
// while
// nil
//

func detectAndRemoveLoop(_ head: ListNode){
    
}


//abcabcbb

//bbbbb //pwwwkew

// temp
// TempStringArr ["ab","bcd"]
// loop
// c -> temp -> yes


func findLongestSubstring(_ word: String) -> Int {
    var tempStr = ""
    var longest = 0
    
    for char in word {
        if tempStr.contains(char) {
            longest = max(longest, tempStr.count)
            tempStr = String(char)
        } else {
            tempStr.append(char)
        }
    }
    longest = max(longest, tempStr.count)
    return longest
}

let str1 = "abcabcbb"
let str2 = "bbbbb"
let str3 = "pwwwkew"
print(findLongestSubstring(str1))
print(findLongestSubstring(str2))
print(findLongestSubstring(str3))


//for char in word {
//    if tempDict[char] != nil  {
//        indexOfchar = tempDict[char]
//    }
//
//max(indexOfchar, )
