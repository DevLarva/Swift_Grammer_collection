import Cocoa
// 할당 연산자
let b = 15
var a = 5
a = b

print(b)


var (x , y) = (1, 2)

//산술 연산자

1 + 2
5 - 3
7 - 3
2 * 3 + 1 - 8 / 10
8 % 4

let three = 3
let minusThree = -three
let plusThree = -minusThree


let minusSix = -6
let alsoMinusSix = +minusSix

//복합 할당 연산자
var c = 1
c += 2
c = c + 2


//비교 연산자

1 == 1   // true because 1 is equal to 1
2 != 1   // true because 2 isn't equal to 1
2 > 1    // true because 2 is greater than 1
1 < 2    // true because 1 is less than 2
1 >= 1   // true because 1 is greater than or equal to 1
2 <= 1   // false because 2 isn't less than or equal to 1

let name = "Daebong"
if name == "world" {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}
