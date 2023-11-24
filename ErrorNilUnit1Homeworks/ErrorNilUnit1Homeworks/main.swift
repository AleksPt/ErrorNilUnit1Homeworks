import Foundation

// MARK: - Task 1. Четность числа

// вариант 1:
func numberEvenOrOdd(_ num: Int) -> Bool {
    num.isMultiple(of: 2)
}

print(numberEvenOrOdd(4))

// вариант 2:
func numberEvenOrOdd2(_ num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    } else {
        return false
    }
}

print(numberEvenOrOdd2(5))

// MARK: - Task 2. Делимость на 3

// вариант 1:
func divisionByThree(_ num: Int) -> Bool {
    num.isMultiple(of: 3)
}

print(divisionByThree(11))

// вариант 2:
func divisionByThree2(_ num: Int) -> Bool {
    if num % 3 == 0 {
        return true
    } else {
        return false
    }
}

print(divisionByThree2(12))
