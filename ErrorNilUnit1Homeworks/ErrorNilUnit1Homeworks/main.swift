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

// MARK: - Task 2

let num = 3

// через инструкцию if:
if num % 2 == 0 {
    print("Число четное")
} else {
    print("Число нечетное")
}

// через инструкцию switch:
switch num % 2 == 0 {
case true:
    print("Число четное")
case false:
    print("Число нечетное")
}

// через тернарный оператор:
num.isMultiple(of: 2) ? print("Число четное") : print("Число нечетное")

// MARK: - Task 3

let isAdult = true
let ticketStatus = false

// через инструкцию if:
if isAdult && ticketStatus {
    print("Добро пожаловать!")
} else {
    print("Доступ запрещен")
}

// через инструкцию switch:
switch isAdult && ticketStatus {
case true:
    print("Добро пожаловать")
case false:
    print("Доступ запрещен")
}

// через тернарный оператор:
isAdult && ticketStatus ? print("Добро пожаловать") : print("Доступ запрещен")

// MARK: - Task 4

let firstName = "Anton"
let lastName = "Chekhov"
let patronymic = "Pavlovich"

// через конкатенацию:
let fullName = firstName + " " + patronymic + " " + lastName
print(fullName)

// через интерполяцию:
print("\(firstName) \(patronymic) \(lastName)")

// MARK: - Task 5

let num1: Double = 4
let num2: Double = 6

let addition = num1 + num2
print(addition)

let subtraction = num1 - num2
print(subtraction)

let multiplication = num1 * num2
print(multiplication)

let division = num1 / num2
print(num2 != 0 ? division : "На 0 делить нельзя!")

// MARK: - Task 6

let numDouble: Double
let numFloat: Float

numDouble = 33 - 0.000001
numFloat = 33 - 0.000001

print("""
33 - 0.000001:
Это Double -> \(numDouble)
Это Float -> \(numFloat)
""")

// MARK: - Task 7

let age = 21

// вариант 1
if age >= 18 {
    print("Совершеннолетний")
} else {
    print("Не совершеннолетний")
}

// вариант 2
switch age >= 18  {
case true:
    print("Совершеннолетний")
case false:
    print("Не совершеннолетний")
}

// вариант 3
age >= 18 ? print("Совершеннолетний") : print("Не совершеннолетний")

// MARK: - Task 8

for item in 1...10 {
    print(item)
}

// возведение в квадрат - вариант 1
for item in 1...10 {
    print("Квадрат числа \(item) = \(item * item)")
}

// возведение в квадрат - вариант 2
for item in 1...10 {
    print(pow(Decimal(item), 2))
}
