

// MARK: - 문자열 리터럴
let someString = "Some string literal value"

//여러줄 리터럴
//따옴표 3개로 묶기
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,please your Majesty?" he asked.
"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

// MARK: - 문자열 리터럴 특수문자
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665



// MARK: - 빈 문자열 초기화
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nothing")
} else {
    print("something")
}


// MARK: - 문자열 가변성

//변수 var는 수정 가능한 경우 할당, 상수 let의 경우 수정 할 수없는 경우에 할당

var variableString = "Horse"
let constantString = "Highlander"
variableString = "a"
//constantString = "b" 수정 불가능
print(variableString)


for character in "Dog!🐶" {
    print(character)
}


// MARK: - 문자열과 문자 연결

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

let exclamationMark: Character = "!"
welcome.append(exclamationMark)

// MARK: - 문자열 보간🌟
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
//\()를 이용해서 실제 값을 대체 하기 위해 사용된다. 직접 값을 대입 할 수도있지만 그렇게 되면 매우 번거롭기때문에 보간법이 용이하다.

print(#"6 times 7 is \#(6 * 7)."#)


// MARK: - 숫자 세기(count)🌟

// 문자열의 개수를 출력하기 위해서는 count를 이용하면 된다.
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

var word = "cafe"
print("the number of characters in \(word) is \(word.count)")
//보간법을 함께 이용할수도 있다.


// MARK: - 문자열 액세스 및 수정

let greeting = "Guten Tag!"
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]

//offsetBy 를 이용해서 주어진 인덱스에서 해당 수만큼 떨어진 인덱스에 접근하기 위해 사용
//그래서 마지막 index의 값은 startIndex에서 7만큼 떨어진 a 값이기때문에 a 를 출력 한다.

// MARK: - 삽입 및 제거
var Welcome = "hello"
Welcome.insert("!", at: Welcome.endIndex)
Welcome.insert(contentsOf: " there", at: Welcome.index(before: Welcome.endIndex))
//지정된 인덱스에 다른 문자열을 삽입 하기 위해서 insert(comtentsOf)를 사용하면 된다.
//! 와같은 단일 문자를 삽입하기 위해서는 insert(:at)을 사용하면 된다.

Welcome.remove(at: Welcome.index(before: Welcome.endIndex))
//삭제도 삽입과 동일한 방식이다.


// MARK: - 부분 문자열
let greet = "Hello, world!"
let Index = greet.firstIndex(of: ",") ?? greet.endIndex
let beginning = greet[..<index]
// beginning is "Hello"

// Convert the result to a String for long-term storage.
let newString = String(beginning)


// MARK: - 문자열 비교

let quo = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quo == sameQuotation {
    print("These two strings are considered equal")
}




// MARK: - 접두사, 접미사
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
//hasSuffix를 이용해서 배열 내부에 해당 문자열이 있는지 검색 해볼 수있다. 
