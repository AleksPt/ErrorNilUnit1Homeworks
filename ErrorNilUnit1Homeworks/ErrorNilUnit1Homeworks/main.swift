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
