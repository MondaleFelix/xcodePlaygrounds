//: [Previous](@previous)
 /*:
### Challenges:

 1. Write a function called `myNameIs` that takes a `Person?` as an argument and returns a `String` that introduces the person by name (e.g. `"My name is Nikolas."`). In case where the argument has no value, return a string indicating that the argument has no value: `"This is not a valid person object."` Use optional binding for the implementation.
 2. Use the `Person` class that is defined below and create a variable called `maybePerson1` of type `Person?`. Instantiate it with your own name.
 3. Create a variable called `maybePerson2` of type `Person?` and initialize it with `nil`.
 4. Test `myNameIs` by passing in `maybePerson1` and `maybePerson2` into it and observe the results.
 5. Write a second version of `myNameIs` (you can call it `myNameIs2` 😑) where you use pattern matching (i.e. the `switch` statement) to get the same functionality. Test this function with `maybePerson1` and `maybePerson2`, too.
 
 */
class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
}
func myNameIs(withPerson person: Person?) ->String{
    
    let noPerson = "This is not a valid person object."
    guard let person = person else {return noPerson}
    let hello = (" hello \(person.name)")
    
    return hello
}

func myNameIs2(withPerson person: Person?) -> String{
    
    var answer =  ""
    switch person {
    case .none: answer = "This is not a valid person object. "
    case .some:  answer = "hello \(String(describing: person?.name))"
    }
    
    
    return answer
}


let person1 = Person(name: "Mondale")
let person2 : Person? = nil

let p1 = myNameIs(withPerson: person1)
let p2 = myNameIs(withPerson: person2)

let p3 = myNameIs2(withPerson: person1)
let p4 = myNameIs2(withPerson: person2)



