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
