
// MARK: -함수 정의 및 호출 🌟

func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}


print(greet(person:"Anna"))
print(greet(person:"Brian"))

func greetAgain(person:String) -> String {
    return "Hello again, " + person + "!"
    
}
print(greetAgain(person:"Anna"))


// MARK: -함수 매개변수 및 반환 값

func sayHelloWorld() -> String {
    return "hello, world"
}
print(sayHelloWorld())


//여러 매개변수가 있는 함수

func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}

//반환값이 없는 함수
func greeted(person: String) {
    print("Hello, \(person)!")
}
greeted(person: "Dave")

//

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}
func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}
printAndCount(string: "hello, world")
printWithoutCounting(string: "hello, world")


//첫 번째 함수 printAndCount(string:)는 문자열을 인쇄한 다음 문자 수를 int로 반환합니다
//두 번째 함수 printWithoutCounting(string:)는 첫 번째 함수를 호출하지만 반환 값을 무시합니다.


// 반환 값이 여러 개인 함수

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

//함수 본문은 minMax(array:)두 개의 작업 변수인 currentMinand currentMax를 배열의 첫 번째 정수 값으로 설정하는 것으로 시작합니다. 그런 다음 함수는 배열의 나머지 값을 반복하고 각 값이 currentMin및 currentMax각각의 값보다 작거나 큰지 확인합니다. 마지막으로 전체 최소값과 최대값이 두 Int값의 튜플로 반환됩니다.


let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")
//튜플의 멤버 값은 함수 반환 유형의 일부로 이름이 지정되기 때문에 점 구문으로 액세스하여 찾은 최소 및 최대 값을 검색할 수 있습니다.



// 암시적 반환이 있는 함수
func greeting(for person: String) -> String {
    "Hello, " + person + "!"
}
print(greeting(for: "Dave"))
// Prints "Hello, Dave!"

func anotherGreeting(for person: String) -> String {
    return "Hello, " + person + "!"
}
print(anotherGreeting(for: "Dave"))



// MARK: -함수 인수 레이블 및 매개변수 이름

func someFunction(firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(firstParameterName: 1, secondParameterName: 2)


//모든 매개변수는 고유한 이름을 가져야 합니다.여러 매개변수가 동일한 인수 레이블을 가질 수 있지만 고유한 인수 레이블을 사용하면 코드를 더 쉽게 읽을 수 있습니다.




//인수 레이블 지정
func someFunction(argumentLabel parameterName: Int) {
 
}


func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))

//인수 레이블을 사용하면 함수를 표현적이고 문장과 같은 방식으로 호출할 수 있으면서도 읽기 쉽고 의도가 명확한 함수 본문을 제공할 수 있습니다.


//인수 레이블 생략
func someFunction(_ firstParameterName: Int, _ secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(1,2)

//매개변수에 대한 인수 레이블을 원하지 않는 경우 해당 매개변수에 대한 명시적 인수 레이블 대신 _ 을 작성하십시오.



// 기본 매개변수 값
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // If you omit the second argument when calling this function, then
    // the value of parameterWithDefault is 12 inside the function body.
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault is 6
someFunction(parameterWithoutDefault: 4) // parameterWithDefault is 12


//기본값이 없는 매개변수는 함수의 매개변수 목록 시작 부분, 기본값이 있는 매개변수 앞에 배치합니다.기본값이 없는 매개변수는 일반적으로 함수의 의미에 더 중요합니다. 매개변수를 먼저 작성하면 기본 매개변수가 생략되었는지 여부에 관계없이 동일한 함수가 호출되고 있음을 더 쉽게 인식할 수 있습니다.



//가변 매개변수

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8.25, 18.75)


//함수는 여러 가변 매개변수를 가질 수 있습니다. 가변 매개변수 뒤에 오는 첫 번째 매개변수에는 인수 레이블이 있어야 합니다. 인수 레이블은 가변 매개변수에 전달되는 인수와 가변 매개변수 뒤에 오는 매개변수에 전달되는 인수를 명확하게 만듭니다.


//인 - 아웃 매개변수

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
//함수 매개변수는 기본적으로 상수입니다. 해당 함수 본문 내에서 함수 매개 변수의 값을 변경하려고 하면 컴파일 타임 오류가 발생합니다. 이는 실수로 매개변수 값을 변경할 수 없음을 의미합니다. 함수가 매개변수 값을 수정하도록 하고 함수 호출이 끝난 후에도 변경 사항을 유지하려면 해당 매개변수를 in-out 매개변수 로 대신 정의하십시오.



// MARK: -함수 유형


func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
//이러한 함수는 각각 두 개의 값 을 사용하고 적절한 수학 연산을 수행한 결과인 값 Int을 반환합니다


//매개변수 유형으로서의 함수 유형
//다른 함수에 대한 매개변수 유형 과 같은 함수 유형을 사용할 수 있습니다 . 이렇게 하면 함수가 호출될 때 함수 호출자가 제공할 함수 구현의 일부 측면을 그대로 둘 수 있습니다. 다음은 위에서 수학 함수의 결과를 인쇄하는 예입니다.

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)


//반환 유형으로서의 함수 유형
//다음 예제에서는 stepForward(_:)와 stepBackward(_:)라는 두 개의 간단한 함수를 정의합니다. stepForward(_:) 함수는 입력 값보다 하나 더 많은 값을 반환하고, stepForward(_:) 함수는 입력 값보다 하나 더 작은 값을 반환합니다. 두 함수 모두 (Int) -> Int:의 유형을 가집니다.
func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}
var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

print("Counting to zero:")
// Counting to zero:
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")




//중첩 함수
//func chooseStepFunction(backward: Bool) -> (Int) -> Int {
//    func stepForward(input: Int) -> Int { return input + 1 }
//    func stepBackward(input: Int) -> Int { return input - 1 }
//    return backward ? stepBackward : stepForward
//}
//var currentValue = -4
//let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
//// moveNearerToZero now refers to the nested stepForward() function
//while currentValue != 0 {
//    print("\(currentValue)... ")
//    currentValue = moveNearerToZero(currentValue)
//}
//print("zero!")

//중첩 함수는 기본적으로 외부 세계에서 숨겨지지만 여전히 둘러싸는 함수에서 호출하고 사용할 수 있습니다. 둘러싸는 함수는 중첩 함수 중 하나를 반환하여 중첩 함수를 다른 범위에서 사용할 수 있도록 할 수도 있습니다.



