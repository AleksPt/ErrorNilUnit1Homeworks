import Foundation

// MARK: - Task 1. Четность числа

/*
   - *Описание:* 
 Разработайте функцию, которая определяет, является ли предоставленное число четным.
 
   - *Требования:*
     - Функция определения: Создайте функцию, которая принимает число в качестве параметра.
     - Функция должна возвращать true, если число четное, и false, если нечетное.
 
   - *Ожидаемый результат:*
 При передаче числа в функцию, она вернет результат четности числа.
*/

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
