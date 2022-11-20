
// MARK: -함수 정의 및 호출

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


func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}
