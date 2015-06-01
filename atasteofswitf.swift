//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
var i : Int
for (i = 0 ; i < 10 ; i++){
    //println(i)
}

var users = ["Amit" , "Dolly", "Shamby", "Aditi", "Baba", "Maa"]
var ages = [34,20,34,3,79,71]

extension String{
    
    func leadingSpace(width: Int) -> String{
        var s = "\(self)"
        for i in count(s)..<width{
                s = " "+s
        }
        return s
    }
    
    func trailingSpace(width: Int) -> String{
        var s = "\(self)"
        for j in count(s)..<width{
            s = s + " "
        }
        return s
    }
    
}

// a dictionary to store merged input

var merged = [String: Int]()
var totalAge = 0.0

for var i = 0 ; i < ages.count ; i++ {
    merged[users[i]] = ages[i]
}


//iterarte over the dictionary in sorted order.
// and generate report.

for user in sorted(merged.keys){
    
    let age = merged[user]!
    totalAge+=Double(age)
    let paddedUser = user.trailingSpace(10)
    let paddedAge = "\(age)".leadingSpace(3)
    println("\(paddedUser)  \(paddedAge)");
    
}

println("\n\(merged.count) users")
println("average age: \(totalAge / Double(merged.count))")



