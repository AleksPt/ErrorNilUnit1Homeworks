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
