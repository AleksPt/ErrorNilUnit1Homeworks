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

// MARK: - Task 5. Записная книжка

let notebook = [
    "Alex, 79089519039, alex@yahoo.com",
    "Bob, 79645342323, bob@gmail.com",
    "Kristina, 79119410991, kris@outlook.com",
    "Kate, 79909225050, kate@mail.com"
]

func search(name: String, in arr: [String]) -> String {
    for (index, value) in arr.enumerated() {
        if value.hasPrefix(name) {
            return arr[index]
        }
    }
    return ""
}

let resultTask5 = search(name: "Bob", in: notebook)
print(resultTask5)

// MARK: - Task 6. Перестановка элементов массива

let array = [1, 2, 3, 4, 5]

func transposition(array: [Int]) -> [Int] {
    var result = array
    
    let temp = result.last
    guard let temp else { return [] }
    result[result.count - 1] = result[0]
    result[0] = temp
    return result
}

let resultTask6 = transposition(array: array)
print(resultTask6)

// MARK: - Task 7. Форматирование строки

func formattingString(_ str: String) -> String {
    var result = [String]()
    
    for i in str.split(separator: " ") {
        result.append(String(i.capitalized))
    }
    
    return result.joined(separator: " ")
    
//     вариант 2:
//     str.split(separator: " ").map { $0.capitalized }.joined(separator: " ")
}

let resultTask7 = formattingString("съешь еще этих мягких французских булок да выпей чаю")
print(resultTask7)
