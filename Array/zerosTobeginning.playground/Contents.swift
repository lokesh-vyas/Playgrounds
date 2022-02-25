import UIKit

// Move all zeros to the beginning/end of an array.
// Input :  arr[] = {10, 20, 20, 10, 10, 20, 5, 20}


let arr1 = [10,20,20,10,10,20,5,20]

// 1 . 0,1.
// 0 at start and 1 at the end

func move_zero(arr:[Int]) -> [Int]{
    if arr.count < 1 {
        return []
    }
    
    var movedArr = arr
    var startIndex = 0
    var lastIndex = arr.count - 1
    
    for item in movedArr.enumerated() {
        if item.element == 0 {
            movedArr[startIndex] = 0
            startIndex += 1
        } else {
            movedArr[lastIndex] = 1
            lastIndex -= 1
        }
    }
    return movedArr
}

let zeroArray = [0,1,0,1,0,0,1,0,0,1,0,1,0,0,1,0]
print(move_zero(arr: zeroArray))

////////////
///2 .

func move_zero_to_left(arr:[Int]) -> [Int]{
    if arr.count < 1 {
        return []
    }
    
    var movedArr = arr
    var writeIndex = arr.count - 1
    var readIndex = arr.count - 1
    
    while readIndex >= 0 {
        if(movedArr[readIndex] != 0){
            movedArr[writeIndex] = movedArr[readIndex]
            writeIndex -= 1
        }
        readIndex -= 1
    }
    
    while writeIndex >= 0 {
        movedArr[writeIndex] = 0
        writeIndex -= 1
    }
    
    return movedArr
}

print(move_zero_to_left(arr: arr1))
