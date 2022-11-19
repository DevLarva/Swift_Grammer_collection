//Swift는 다양한 제어 흐름 문을 제공합니다. For-In 루프 부터 while, 조건문, 스위치 등등 다양한 제어 흐름 문에 대해서 알아보자.


// MARK: - For-In 루프

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

//For-In 루프를 사용해 배열의 항목, 숫자 범위 또는 문자열의 문자와 같은 시퀸스를 반복 한다.

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
} 

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

//시퀀스의 각 값이 필요하지 않은 경우 변수 이름 대신 밑줄을 사용하여 값을 무시할 수 있습니다.
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

//이것말고도 UI에서 눈금 표시도 가능해진다. 예를 들면 매분마다 움직이게 한다거나 stride(from:to:by:)를 사용해서 원하지 않는 표시를 건너뛸수도 있다.


// MARK: - While 루프

//루프 는 while조건이 될 때까지 일련의 명령문을 수행합니다.
//while루프는 통과할 때마다 시작할 때 조건을 평가합니다.
//repeat- while루프는 통과할 때마다 조건을 평가합니다.

//형식은 다음과 같다.
//while condition {
//    statements
//}


// MARK: - Repeat-While

//repeat-while 루프로 알려진 while 루프의 다른 변형은 루프의 조건을 고려하기 전에 먼저 루프 블록을 통해 단일 패스를 수행합니다. 그런 다음 조건이 거짓이 될 때까지 루프를 계속 반복합니다.

//일반적인 형식
//repeat {
//    statements
//} while condition


// MARK: - 조건문
//가장 간단한 형태의 if명령문에는 단일 if조건이 있습니다.

var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}


//if-else 문
temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}


temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}

// MARK: - 스위치


//스위치 문은 값을 고려하여 가능한 여러 일치 패턴과 비교합니다. 그런 다음 성공적으로 일치하는 첫 번째 패턴을 기반으로 적절한 코드 블록을 실행합니다. 스위치 문은 여러 잠재적 상태에 응답하기 위한 if 문에 대한 대안을 제공합니다.
//switch some value to consider {
//case value 1:
//   respond to value 1
//case value 2,
//     value 3:
//    respond to value 2 or 3
//default:
//    otherwise, do something else
//}

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}

//여기서 someCharacter가 a와 z둘다 아닐시 default값인 print("Some other character")를 출력하게 된다


// MARK: - No Implicit Fallthrough


//let anotherCharacter: Character = "a"
//switch anotherCharacter {
//case "a": // Invalid, the case has an empty body
//case "A":
//    print("The letter A")
//default:
//    print("Not the letter A")
//}
// This will report a compile-time error.
//각 케이스의 본문 에는 실행 가능한 명령문이 하나 이상 포함 되어야 합니다. 첫 번째 경우가 비어 있기 때문에 다음 코드를 작성하는 것은 유효하지 않습니다.

//올바른 예시
let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}

//인터벌 매칭

//해당 예시에서는 숫자 간격을 이용하여 모든 크기의 숫자에 대한 자연어 개수를 제공한다.
let approximateCount = 2
let countedThings = "moons orbiting Saturn"
let naturalCount: String

switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")



// MARK: - 튜플
//튜플을 사용하여 동일한 switch문에서 여러 값을 테스트할 수 있습니다. 튜플의 각 요소는 다른 값 또는 값의 간격에 대해 테스트할 수 있습니다. _또는 와일드카드 패턴이라고도 하는 밑줄 문자( )를 사용하여 가능한 모든 값과 일치시킵니다.

let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}


// MARK: - where
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}


// MARK: - 제어 이전 문
//Swift에는 continue, break, fallthrough, return, throw로 총 5가지의 제어 전송문이 있다.


//continue
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)


//break
//반복문 내에서 사용되는 break의 경우 반복 실행을 즉시 종료하고 루프를 닫는 중괄호 뒤로 바로 제어를 전송 해버린ㄷ.
let numberSymbol: Character = "三"  // Chinese symbol for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value couldn't be found for \(numberSymbol).")
}


//fallthrough

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)



// MARK: - 조기 종료
//guard명령문과 마찬가지로 명령문은 표현식의 if부울 값에 따라 명령문을 실행합니다.
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }

    print("Hello \(name)!")

    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }

    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])
greet(person: ["name": "Jane", "location": "Cupertino"])
//guard 문의 조건이 충족되면 guard문의 중괄화 이후에도 코드 실행이 계속된다.
