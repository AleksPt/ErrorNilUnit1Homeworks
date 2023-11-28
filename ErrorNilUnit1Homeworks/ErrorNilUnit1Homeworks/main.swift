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

// MARK: - Task 8. Конвертация дня недели

func convertDayOfWeek(day: String) -> Int {
    switch day {
    case "понедельник":
        return 1
    case "вторник":
        return 2
    case "среда":
        return 3
    case "четверг":
        return 4
    case "пятница":
        return 5
    case "суббота":
        return 6
    case "воскресенье":
        return 7
    default: return 0
    }
}

let resultTask8 = convertDayOfWeek(day: "суббота")
print(resultTask8)

// MARK: - Task 9. Уникальные символы

func uniqueSymbols(string str: String) -> Bool {
    Set(str).count == str.count
}

let resultTask9 = uniqueSymbols(string: "swift")
print(resultTask9)

// MARK: - Task 10. Слияние массивов

let array1 = [1, 2, 3]
let array2 = [4, 5, 6]

func mergeArray(array1: [Int], array2: [Int]) -> [Int] {
    array1 + array2
}

let resultTask10 = mergeArray(array1: array1, array2: array2)
print(resultTask10)

// MARK: - Task 11. Подсчет гласных

func countVowels(_ str: String) -> Int {
    var result = Int()
    
    let vowels: [Character] = ["а", "у", "о", "ы", "и", "э", "я", "ю", "ё", "е"]
    
    for i in str {
        if vowels.contains(i) {
            result += 1
        }
    }
    
    return result
}

let resultTask11 = countVowels("алла")
print(resultTask11)

// MARK: - Task 12. Удаление дубликатов из массива

let arrayDuplicatesNumbers = [1, 1, 2, 2, 3, 3]

func removeDuplicatesFromArray(array: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in array {
        if !result.contains(i) {
            result.append(i)
        }
    }
    
    return result
}

let resultTask12 = removeDuplicatesFromArray(array: arrayDuplicatesNumbers)
print(resultTask12)

// MARK: - Task 13. Сумма всех чисел до N

func sumOfAllNumbers(number n: Int) -> Int {
    var result = Int()
    
    for i in 1...n {
        result += i
    }
    
    return result
}

let resultTask13 = sumOfAllNumbers(number: 3)
print(resultTask13)

// MARK: - Task 14. Длинное слово в строке

func longWordInString(string str: String) -> String {
    let words = str.split(separator: " ")
    var result = String()
    
    for i in words {
        if i.count > result.count {
            result = String(i)
        }
    }
    
    return result
}

let resultTask14 = longWordInString(string: "самое длинное слово в предоставленной строке")
print(resultTask14)

// MARK: - Task 15. Сокращение строки

func shortString(string str: String, number num: Int) -> String {
    num > 0 ? String(str.dropLast(num)) + "..." : str
}

let resultTask15 = shortString(string: "Сокращение", number: 6)
print(resultTask15)

// MARK: - Task 16. Объединение двух массивов без дубликатов

func mergingArraysWithoutDuplicates(array1: [Int], array2: [Int]) -> [Int] {
    Array(Set(array1 + array2)).sorted()
}

let arr1 = [1, 2, 3, 3, 3]
let arr2 = [4, 4, 4, 5, 6]

let resultTask16 = mergingArraysWithoutDuplicates(array1: arr1, array2: arr2)
print(resultTask16)
