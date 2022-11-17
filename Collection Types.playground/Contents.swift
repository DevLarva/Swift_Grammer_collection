
// MARK: - 빈 배열 만들기
var someInts: [Int] = [1, 2, 4, 5]
print("someInts is of type [Int] with \(someInts.count) items.")
someInts.append(3)
print("someInts is of type [Int] with \(someInts.count) items.")
//append 를 이용해 배열에 새로운 인덱스 값을 삽입 할 수있다.


//기본값으로 배열 만들기
var threeDoubles = Array(repeating: 0.0, count: 3)
//반복할 기본값을 repeating으로, 몇번 반복 할지를 count로 설정하면 다음과 같이 기본값으로 하나의 배열을 만들 수있다.

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles
//기존에 만들어진 배열과 2.5를 기본값으로 하는 새로운 배열을 다음과 같이 합칠 수 있다.



// MARK: - 배열 리터럴로 배열 만들기

//var shoppingList: [String] = ["Eggs", "Milk"]
var shoppingList = ["Eggs", "Milk"]
// Swift의 유형 추론 덕분에 동일한 유형의 값을 포함하는 배열 리터럴로 배열을 초기화하는 경우 배열 유형을 작성할 필요가 없다. 따라서 두 코드는 동일한 결과를 출력한다.


// MARK: - 어레이 액세스 및 수정
print("The shopping list contains \(shoppingList.count) items.")


if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty.")
}
//shoppingList에 isEmpty를 이용해서 배열이 비었는지 안비었는지를 부울 속성을 이용해 확인 할 수있다.

shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
//append를 사용하거나 += 연산자를 이용해 하나 이상의 항목을 배열에 추가할수있다.


//배열의 첫 번째 항목은 1이아니라 0이다.
shoppingList[0] = "six eggs"

shoppingList.insert("Maple Syrup", at: 0)
//지정된 인덱스에서 배열에 항목을 삽입 할려면 insert(:at)을 호출하면 된다.
let mapleSyrup = shoppingList.remove(at: 0)
//remove(at)을 사용하여 배열에서 항목을 제거 할 수도있다.

var firstItem = shoppingList[0]


// MARK: - 배열 반복
//for - in 루프를 이용해 배열 전체 값 집합을 반복 할 수있다.
for item in shoppingList {
    print(item)
    
}

// MARK: - 세트
//빈 세트 생성 및 초기화
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
letters.insert("b")

//베열 리터럴로 집합 만들기
//var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
//굳이 세트 요소의 유형을 작성해줄 필요가 없다 따라서 위의 코드 보단 아래코드가 더 좋다~


//세트 액세스 및 수정
print("I have \(favoriteGenres.count) favorite music genres.")


if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}

//만약에 세트에 특정 항목이 있는지 확인 해볼려면 contains(:)를 사용하면 된다
if favoriteGenres.contains("Apple") {
    print("we have it")
} else {
    print("We don't have it")
}

// MARK: - 집합 작업 수행

// 두 집합을 함께 결합하거나, 두 집합이 공통으로 갖는 값을 결정하거나, 두 집합이 동일한 값을 모두 포함하는지, 일부만 포함하는지 또는 전혀 포함하지 않는지 확인하는 것과 같은 기본적인 집합 작업을 효율적으로 수행할 수 있다.
// intersection,symmetricDifference, union, subtracting가 있다. 차례 대로 교집합, 두세트중 하나의 값으로 새세트를 작성, 두 집합의 모든 값, 지정된 세트에 없는 값으로 작성
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.subtracting(evenDigits).sorted()



// MARK: - Dictionary

var namesOfIntegers: [Int: String] = [:]
namesOfIntegers[16] = "sixteen"
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]



//딕셔너리 액세스 및 수정
print("The airports dictionary contains \(airports.count) items.")

airports["LHR"] = "London"
print("The airports dictionary contains \(airports.count) items.")


//사전에 요청된 키에 대한 값이 포함되어 있으면 아래 첨자는 해당 키에 대한 기존 값을 포함하는 선택적 값을 반환한다.

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport isn't in the airports dictionary.")
}

//추가가 된다는것은 삭제도 가능하다는거겠죠?
