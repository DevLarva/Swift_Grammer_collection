
// MARK: - 기본 연산자


import Cocoa


// MARK: -할당 연산자
let b = 15
var a = 5
a = b

print(b)


var (x , y) = (1, 2)



// MARK: -산술 연산자
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

// MARK: -복합 할당 연산자
var c = 1
c += 2
c = c + 2


// MARK: -비교 연산자

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


// MARK: -삼항 조건 연산자🌟

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
// rowHeight is equal to 90


//위에꺼를 풀어쓰면 아래와 같다.
//let contentHeight = 40
//let hasHeader = true
//let rowHeight: Int
//if hasHeader {
//    rowHeight = contentHeight + 50
//} else {
//    rowHeight = contentHeight + 20
//}


// MARK: -Nil-Coalescing 연산자

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
//userDefinedColorName변수는 선택 사항으로 정의되며 기본값은 String
//userDefinedColorName의 값이 nill이기 때문에 기본값이 아닌 defaultColorName의 값을 사용

// MARK: -범위 연산자
//The closed range operator (a...b) defines a range that runs from a to b, and includes the values a and b. The value of a must not be greater than b.

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
// Person 1 is called Anna
// Person 2 is called Alex
// Person 3 is called Brian
// Person 4 is called Jack


for name in names[2...] {
    print(name)
}
// Brian
// Jack
//배열의 첫번째 요소가 0부터 시작하니깐 2부터 끝까지라는건 사람이 보기엔 3번째 위치에 있는것 부터 끝까지 출력하는것

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian
//배열의 처음부터 인덱스 2번까지 출력하는걸로 사람이 보기엔 3번째 위치해있는것까지 출력


// MARK: -논리 연산자

//NOT 연산자
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"

//AND 연산자
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"

//OR 연산자
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"

//논리 연산자 결합
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"
