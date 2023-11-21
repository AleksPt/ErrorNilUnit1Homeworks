import Foundation

// MARK: - Task 1

let bool1 = true
let bool2 = false

// через инструкцию if:
if bool1 && bool2 {
    print("Оба условия выполняются")
} else {
    print("Не все условия выполняются")
}

if bool1 || bool2 {
    print("Хотя бы одно из условий выполняется")
} else {
    print("Оба условия ложны")
}

if bool1 && bool2 {
    print("Оба условия выполняются")
} else if bool1 || bool2 {
    print("Хотя бы одно из условий выполняется")
} else {
    print("Оба условия ложны")
}

// через тернарный оператор:
bool1 && bool2 ? print("Оба условия выполняются") : print("Не все условия выполняются")
bool1 || bool2 ? print("Хотя бы одно из условий выполняется") : print("Оба условия ложны")

// через инструкцию switch:
switch bool1 && bool2 {
case true:
    print("Оба условия выполняются")
case false:
    print("Не все условия выполняются")
}

switch bool1 || bool2 {
case true:
    print("Хотя бы одно из условий выполняется")
case false:
    print("Оба условия ложны")
}
