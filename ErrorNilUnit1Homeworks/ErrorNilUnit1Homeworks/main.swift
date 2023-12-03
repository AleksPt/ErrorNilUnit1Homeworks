import Foundation

// MARK: - 1 задание

var eventStorage = [String: [[String]]]()
var arrayEvents = [String]()

func addEvent() {
    func addEvent(date: String, event: String) {
        arrayEvents.append(event)
        eventStorage[date] = [arrayEvents]
    }
    
    print("Введите дату:")
    let userDate = readLine()
    guard let userDate = userDate else { return }
    guard !userDate.isEmpty else { print("Вы ничего не ввели"); return }
    
    print("Введите мероприятие:")
    let userEvent = readLine()
    guard let userEvent = userEvent else { return }
    guard !userDate.isEmpty else { print("Вы ничего не ввели"); return }
    
    addEvent(date: userDate, event: userEvent)
}

func showEvent() {
    func showEvent(date: String) {
        print(eventStorage[date] ?? "Событий на указанную дату нет")
    }
    
    print("Введите дату:")
    let userDate = readLine()
    guard let userDate else { return }
    guard !userDate.isEmpty else { print("Вы ничего не ввели"); return }
    print("Ваши мероприятия в эту дату:")
    
    showEvent(date: userDate)
    
}

func calendar() {
    print("""
        Выберите действие (введите число):
        1 - Добавить мероприятие
        2 - Показать мероприятия на определенную дату
        3 - Выйти из приложения
        """)

    let userAnswer = readLine()
        
        switch userAnswer {
        case "1":
            addEvent()
            print("")
            calendar()
        case "2":
            showEvent()
            print("")
            calendar()
        case "3":
            print("Работа приложения завершена")
        default:
            print("Ошибка ввода, попробуйте еще раз\n")
            calendar()
        }
}

// MARK: - 2 задание. Хранилище настроек

var settingStorage = [String: String]()

func addSetting(key: String, value: String) {
    settingStorage[key] = value
}

func extractSetting(key: String) -> String? {
    settingStorage[key]
}

func displayAllSettings() {
    for i in settingStorage {
        print("Ключ: \(i.key), значение: \(i.value)")
    }
}

// MARK: - 3 задание. Простой англо-русский переводчик

let dictEngRus = [
    "red": "красный",
    "green": "зеленый",
    "white": "белый",
    "black": "черный"
]

func translate() {
    func translate(word: String) ->String? {
        dictEngRus[word]
    }
    
    print("Введите слово на английском языке:")
    let userAnswer = readLine()
    
    guard let userAnswer else { return }
    guard !userAnswer.isEmpty else { print("Вы ничего не ввели"); return }
    
    print("Перевод на русский: \(translate(word: userAnswer) ?? "Упс! Такого слова в базе еще нет")")
}

func translateApp() {
    
    print("""
        Выберите действие (введите число):
        1 - Перевести слово.
        2 - Выйти из приложения
        """)
    
    let userAnswer = readLine()
    
    switch userAnswer {
    case "1":
        translate()
        print("")
        translateApp()
    case "2":
        print("Работа приложения завершена")
    default:
        print("Ошибка ввода, попробуйте еще раз\n")
        translate()
    }
}

// MARK: - 4 задание. Справочник городов по странам

var countryDatabase = [String: Set<String>]()

func addCity() {
    func addCity(country: String, city: String) {
        countryDatabase[country] = Set(arrayLiteral: city)
    }
    
    print("Введите страну:")
    let userAnswerCountry = readLine()
    
    guard let userAnswerCountry else { return }
    guard !userAnswerCountry.isEmpty else { print("Вы ничего не ввели"); return }
    
    print("Введите город:")
    let userAnswerCity = readLine()
    
    guard let userAnswerCity else { return }
    guard !userAnswerCity.isEmpty else { print("Вы ничего не ввели"); return }
    
    addCity(country: userAnswerCountry, city: userAnswerCity)
}

func deleteCity() {
    func deleteCity(country: String, city: String) {
        countryDatabase[country]?.remove(city)
    }
    
    print("Введите страну:")
    let userAnswerCountry = readLine()
    
    guard let userAnswerCountry else { return }
    guard !userAnswerCountry.isEmpty else { print("Вы ничего не ввели"); return }
    
    print("Введите город:")
    let userAnswerCity = readLine()
    
    guard let userAnswerCity else { return }
    guard !userAnswerCity.isEmpty else { print("Вы ничего не ввели"); return }
    
    deleteCity(country: userAnswerCountry, city: userAnswerCity)
}

func viewCities() {
    func viewCities(in country: String) {
        print(countryDatabase[country] ?? "Данных нет")
    }
    
    print("Введите страну:")
    let userAnswerCountry = readLine()
    
    guard let userAnswerCountry else { return }
    guard !userAnswerCountry.isEmpty else { print("Вы ничего не ввели"); return }
    
    viewCities(in: userAnswerCountry)
}

func citiesByCountry() {
    
    print("""
        Выберите действие (введите число):
        1 - Добавить город
        2 - Удалить город
        3 - Посмотреть города
        4 - Закрыть
        """)
    
    let userAnswer = readLine()
    
    switch userAnswer {
    case "1":
        addCity()
        print("")
        citiesByCountry()
    case "2":
        deleteCity()
        print("")
        citiesByCountry()
    case "3":
        viewCities()
        print("")
        citiesByCountry()
    case "4":
        print("Работа приложения завершена")
    default:
        print("Ошибка ввода, попробуйте еще раз\n")
        citiesByCountry()
    }
}

// MARK: - 5 задание. Нахождение общих элементов двух массивов

let arrayA = [1,2,3,4,5,6]
let arrayB = [4,5,6,7,8,9]

func commonElements(array1: [Int], array2: [Int]) -> [Int] {
    Array(Set(array1).intersection(Set(array2)))
}

// MARK: - 6 Задание. Поиск общих друзей двух пользователей

let friendsList: [String: Set<String>] = ["Alice": ["David", "Bob"], "Eve": ["David", "Bob"]]

func findCommonFriends(_ user1: String, _ user2: String) -> Set<String>? {

    guard let friends1 = friendsList[user1], let friends2 = friendsList[user2] else {
        print("Один из пользователей не найден в списке друзей")
        return nil
    }
    
    let result = friends1.intersection(friends2)
    print("Общие друзья \(user1) и \(user2): \(result)")
    return result
}

// MARK: - 7 задание. Найти уникальные элементы в массиве

func uniqueElements(_ arr: [Int]) -> [Int] {
    Array(Set(arr))
}

// MARK: - 8 задание. Реализация простого телефонного справочника

var phoneBook = [String: Int]()

func addNumber(name: String, number: Int) {
    phoneBook[name] = number
}

func removeNumber(name: String) {
    phoneBook.removeValue(forKey: name)
}

func removeNumber(name: String) -> Int? {
    phoneBook[name]
}

// MARK: - 9 задание. Реализация теста по умножению

var questionsAsked = Set<String>()

let questionsAndAnswers = [
    "1*1": 1,
    "2*2": 4,
    "3*3": 9,
    "4*4": 16,
    "5*5": 25,
    "6*6": 36,
    "7*7": 49,
    "8*8": 56,
    "9*9": 64,
    "10*10": 100,
]

var correctAnswers = 0

func generateUniqueMultiplicationQuestion() -> (String, Int) {
    questionsAndAnswers.randomElement()!
}

func determineGrade(_ num: Int) -> Int {
    var result = Int()
    
    switch num {
    case 0...2: result = 2
    case 3...5: result = 3
    case 6...8: result = 4
    case 9,10: result = 5
    default: break
    }
    
    print("""
        Правильных ответов: \(correctAnswers)
        Оценка = \(result)
        """)
    return result
}

for _ in 1...10 {
    
    let question = generateUniqueMultiplicationQuestion()
    
    if !questionsAsked.contains(question.0) {
        print("Сколько будет \(question.0)?")
        let userAnswer = readLine()
        if userAnswer == String(question.1) {
            correctAnswers += 1
        }
        questionsAsked.insert(question.0)
    }
}

// MARK: - 10 задание. Функция склонения слова "монета" в зависимости от числа

let cases = [
    1: "монета",
    2: "монеты",
    3: "монеты",
    4: "монеты"
]

func coinCase(for num: Int) -> String {
    var result = "\(num) "
    
    let lastDigit = Int(Double(num).truncatingRemainder(dividingBy: 10))
    let lastTwoDigits = Int(Double(num).truncatingRemainder(dividingBy: 100))
    
    switch lastTwoDigits {
    case 11,12,13,14:
        result.append("монет")
        return result
    default:
        break
    }
    
        for i in cases {
            if lastDigit == i.key {
                result.append(i.value)
                return result
            }
        }
    
    result.append("монет")
    return result
}

// MARK: - 12 задание. Поиск двух чисел, сумма которых равна заданному числу

let nums = [1,2,3,4,5]

let target = 9

func findTwoSum(nums: [Int], target: Int) -> (Int, Int) {
    var result = (0, 0)
    
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            if nums[i] + nums[j] == target {
                result = (nums[i], nums[j])
            }
        }
    }
    
    return result
}

print(findTwoSum(nums: nums, target: target))
