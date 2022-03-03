import UIKit


// input: "Hello World"
// output: "Hello World"

// input: "Hello World    "
// output: "Hello World"

// input: "    Hello World     "
// output: "Hello World"

// input: "     Hello      World    "
// output: "Hello      World"


func trim(input: String) -> String {
    var str = input
    var startIndex = 0
    var lastIndex = (input.count - 1)
    
    var firstFoundChar = false
    var lastFoundChar = false
    
    while lastIndex > startIndex && !(lastFoundChar && firstFoundChar)  {   //
        if lastFoundChar == false {
            if str.last == " "{
                str.removeLast()
                lastIndex -= 1
            } else {
                lastFoundChar = true
            }
        }
        if firstFoundChar == false {
            if str.first == " "{
                str.removeFirst()
                startIndex += 1
            } else {
                firstFoundChar = true
            }
        }
    }
    return str
}

print(trim(input: "  Hello      World         "))
