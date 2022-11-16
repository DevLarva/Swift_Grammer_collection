
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
