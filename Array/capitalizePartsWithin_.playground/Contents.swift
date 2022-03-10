import UIKit


// capitalizeParts

// Input
//1. Hello _world_
//2. _Hello_ world
//3. _Hello world_
//4. _Hello
//5. _Hello_ world_
//6. hello _world_ hello _world
//7. _Hello_ he_llo world_ world _hello_

// OutPut
//1. Hello WORLD
//2. HELLO world
//3. HELLO WORLD
//4. _Hello
//5. HELLO world_
//6. hello WORLD hello _world
//7. HELLO heLLO WORLD world HELLO

func capitalizeParts(inStr: String) -> String {
    // Write your code here
    // check for 1st _ and next _
    // put all string in between in temp and make capital
    // join string
    // if _ closing not found then no need to make capital
    
    
    // He
    
    var temp : String = ""
    var uperCaseString : String = ""
    var tempUperCaseString: String = ""
    var newString: String = ""
    
    var inStrCount = 0
    var countForUS = 0
    
    for str in inStr {
        inStrCount += 1
        if str == "_" {
            countForUS += 1
            if countForUS == 3 {
                countForUS = 1
            }
            if countForUS == 2 {
                countForUS = 0
                if newString.count < 1 {
                 newString = temp + uperCaseString
                 uperCaseString = ""
                 temp = ""
                tempUperCaseString = ""
                } else {
                 newString = newString + temp + uperCaseString
                 uperCaseString = ""
                 temp = ""
                    tempUperCaseString = ""
                }
            } else if countForUS == 1 && inStrCount == inStr.count {
                newString = newString + "_" + temp + uperCaseString
            }
        } else {
            if countForUS == 1 {
                uperCaseString.append(str.uppercased())
                tempUperCaseString.append(str)
            }  else {
                temp.append(str)
            }
        }
    }
    if  countForUS == 0  {
         newString = newString + temp + uperCaseString
    } else if countForUS == 1 {
        newString = newString + "_" + temp + tempUperCaseString
    }
    return newString
}

print(capitalizeParts(inStr: "_Hello"))
