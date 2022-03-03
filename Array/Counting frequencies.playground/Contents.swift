import UIKit

// Given an array which may contain duplicates, print all elements and their frequencies.
// Input :  arr[] = {10, 20, 20, 10, 10, 20, 5, 20}
//Output : 10 3
//        20 4
//        5  1

//let arr1 = [10,20,20,10,10,20,5,20]
//
func frequencyNumber(arr : [Int]) {
    var freqMap :[Int:Int] = [Int:Int]()
    arr.forEach({ item in
        freqMap[item] = (freqMap[item] ?? 0) + 1
    })
    for (key,value) in freqMap.enumerated() {
        print("\(key) :  \(value)")
    }
}
//
//frequencyNumber(arr: arr1)

func mostR(num : [Int])
{
    var intsChars: [Int] = []
    for char in "\(num)" {
        if let digit = Int(String(char)) {
            intsChars.append(digit)
        }
    }
    frequencyNumber(arr: intsChars)
    // print max repeted number
}

var array = [1,22,33,55,4,3,2,0,0,0,0]

mostR(num : array)

