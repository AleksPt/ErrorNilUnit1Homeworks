import Foundation

// MARK: - Task 1. Сортировка чисел

var arrayOfNumbers = [9, 7, 1, 3, 5, 10, 4, 2, 8, 6]

func sortingNumbers(array: [Int]) -> [Int] {
    
    var resultArray = array
    let n = resultArray.count
    
    for i in 0..<n - 1 {
        for j in 0..<n - i - 1 {
            if resultArray[j] > resultArray[j + 1] {
                let temp = resultArray[j]
                resultArray[j] = resultArray[j + 1]
                resultArray[j + 1] = temp
            }
        }
    }
    
    return resultArray
}

let resultTask1 = sortingNumbers(array: arrayOfNumbers)
print(resultTask1)

// MARK: - Task 2. Проверка палиндрома

func checkPalindrome(string str: String) -> Bool {
    if str == String(str.reversed()) {
        return true
    } else {
        return false
    }
}

let resultTask2 = checkPalindrome(string: "шалаш")
print(resultTask2)

// MARK: - Task 3. Сумма элементов массива

let arrayItems = [1, 1, 1, 1, 1]

func sumOfArrayElements(array arr: [Int]) -> Int {
    var sum = 0
    
    for i in arr {
        sum += i
    }
    
    return sum
}

let resultTask3 = sumOfArrayElements(array: arrayItems)
print(resultTask3)

// MARK: - Task 4. Конвертация температуры

func convertTemperature(celsius: Float) -> Float {
    (celsius * 9.0/5.0) + 32.0
}

let resultTask4 = convertTemperature(celsius: 36.6)
print(resultTask4)
