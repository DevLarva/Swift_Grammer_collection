
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
