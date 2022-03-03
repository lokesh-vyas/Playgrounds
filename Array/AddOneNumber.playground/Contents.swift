import UIKit

// Adding one to number represented as array of digits

//Input : [1, 2, 4]
//Output : [1, 2, 5]
//
//Input : [9, 9, 9]
//Output : [1, 0, 0, 0]


func incrementArray(arr:[Int]) -> [Int] {
    let sizeOfArr = arr.count
    var newArr = arr
    
    // If last digit is less then 9
    if newArr[sizeOfArr - 1] < 9 {
        newArr[sizeOfArr - 1] += 1
        return newArr
    }
    
    // Add 1 to last digit and find carry
    newArr[sizeOfArr - 1] += 1
    var carry = newArr[sizeOfArr - 1] / 10
    newArr[sizeOfArr - 1] = newArr[sizeOfArr - 1] % 10
    
    for i in (0..<sizeOfArr - 1).reversed() {
        if carry == 1 {
            newArr[i] += 1
            carry = newArr[i] / 10
            newArr[i] = newArr[i] % 10
        }
    }
    // If carry is 1, we need to add a 1 at the beginning of Array
    if carry == 1 {
        newArr.insert(1, at: 0)
    }
    return newArr
}

let input1 = [1, 2, 4]
let input2 = [9, 9, 9]
print(incrementArray(arr: input1))
print(incrementArray(arr: input2))


func incrementArrayWithDigit(arr:[Int], digit:Int) -> [Int] {
    let sizeOfArr = arr.count
    var newArr = arr
    
    // Add digit to last digit and find carry
    newArr[sizeOfArr - 1] += digit
    var carry = newArr[sizeOfArr - 1] / 10
    newArr[sizeOfArr - 1] = newArr[sizeOfArr - 1] % 10
    
    for i in (0..<sizeOfArr - 1).reversed() {
        if carry == 1 {
            newArr[i] += 1
            carry = newArr[i] / 10
            newArr[i] = newArr[i] % 10
        }
    }
    // If carry is grater then 1, we need to add carry at the beginning of Array
    if carry >= 1 {
        newArr.insert(carry, at: 0)
    }
    return newArr
}

let input11 = [1, 2, 4]
let input12 = [9, 9, 9]
print(incrementArrayWithDigit(arr: input11,digit: 10))
print(incrementArrayWithDigit(arr: input12,digit: 9))
