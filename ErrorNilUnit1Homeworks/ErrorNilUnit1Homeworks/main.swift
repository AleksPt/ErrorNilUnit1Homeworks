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

// MARK: - Task 3. Массив из 100 чисел

// вариант 1:
var array100numbers = Array(1...100)

for (index, value) in array100numbers.enumerated().reversed() {
    if value % 2 == 0 || value % 3 == 0 {
        array100numbers.remove(at: index)
    }
}

// вариант 2:
let array100numbers2 = Array(1...100)

let resultArray100numbers2 = array100numbers2.filter { !$0.isMultiple(of: 2) && !$0.isMultiple(of: 3) }

// MARK: - Task 4. Числа Фибоначчи

var arrayFibonacci = [Int]()

func uppendFibonacci() {
    
    func fibonacci(_ n: Int) -> Int {
        if n == 0 {
            return 0
        } else if n == 1 {
            return 1
        } else {
            return fibonacci(n - 1) + fibonacci(n - 2)
        }
    }
    
    for _ in 1...50 {
        let randomNumber = Int.random(in: 1...10)
        arrayFibonacci.append(fibonacci(randomNumber))
    }
}

uppendFibonacci()
print(arrayFibonacci)
print(arrayFibonacci.count)
