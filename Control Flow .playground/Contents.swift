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
