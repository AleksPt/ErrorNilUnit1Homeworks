import Foundation

// MARK: - 1 задание. Времена года и их температура

enum Season {
    case winter
    case spring
    case summer
    case fall
    
    var averageTemperature: Double {
        switch self {
        case .winter:
            return -6.3
        case .spring:
            return 1.6
        case .summer:
            return 13.7
        case .fall:
            return 4.2
        }
    }
}

let resultTask1: Season = .summer
resultTask1.averageTemperature

//MARK: - 2 задание. Информация о транспортных средствах

enum Transport {
   case car(Int)
   case bicycle(Int)
   case train(Int)
   case plane(Int)
}

let car: Transport = .car(250)
let bicycle: Transport = .bicycle(30)
let train: Transport = .train(400)
let plane: Transport = .plane(1000)

// MARK: - 3 задание. Статусы платежей

enum PaymentStatus {
    case unpaid
    case inProcessing
    case paid(String)
    case error(String)
}

let statusPaid: PaymentStatus = .paid("5/12/2023")
let statusError: PaymentStatus = .error("банкрот")

// MARK: - 4 задание. Рекомендации по режимам камеры

enum CameraMode {
    case auto
    case portrait
    case landscape
    case nightly
    
    var recommendation: String {
        switch self {
        case .auto:
            return "В этом режиме фотоаппарат автоматически выбирает наиболее подходящие настройки для съемки в зависимости от условий освещения и сцены"
        case .portrait:
            return "В этом режиме фокус камеры фокусируется на объекте съемки, размывая задний план, чтобы создать эффект глубины"
        case .landscape:
            return "Этот режим предназначен для фотографирования обширных пейзажей, где требуется широкий угол обзора"
        case .nightly:
            return "Этот режим идеально подходит для фотографирования в условиях низкой освещенности"
        }
    }
}

let cameraMode: CameraMode = .nightly
cameraMode.recommendation

// MARK: - 5 задание. Диеты животных в зоопарке

enum AnimalType {
    case predator
    case herbivore
    case insect
    
    var diet: String {
        switch self {
        case .predator:
            return "Хищники едят других животных, таких как кролики, олени, антилопы и другие более мелкие млекопитающие. Они также могут есть рыбу, птиц и насекомых."
        case .herbivore:
            return "Травоядные могут есть большинство видов растений, включая траву, листья деревьев, цветы, фрукты и овощи."
        case .insect:
            return "Насекомые едят растения, фрукты, овощи, грибы и других насекомых"
        }
    }
}

let insect: AnimalType = .insect
insect.diet

// MARK: - 6 Задание. Отслеживание статуса заказа в ресторане

enum OrderStatus: String {
    case received
    case prepared = "Готовится"
    case readyToServe = "Готов к подаче"
    case delivered = "Доставляется"
    
    var nextStatus: String {
        switch self {
        case .received:
            return "Следующий статус: \(OrderStatus.prepared.rawValue)"
        case .prepared:
            return "Следующий статус: \(OrderStatus.readyToServe.rawValue)"
        case .readyToServe:
            return "Следующий статус: \(OrderStatus.delivered.rawValue)"
        case .delivered:
            return ""
        }
    }
}

let statusMyOrder: OrderStatus = .readyToServe
statusMyOrder.nextStatus

// MARK: - 7 задание. Информация о номерах в отеле

enum RoomType {
    case singleRoom
    case doubleRoom
    case luxuryRoom
    
    var price: Int {
        switch self {
        case .singleRoom:
            return 100
        case .doubleRoom:
            return 500
        case .luxuryRoom:
            return 1000
        }
    }
    
    var numberOfAvailable: Int {
        switch self {
        case .singleRoom:
            return 7
        case .doubleRoom:
            return 4
        case .luxuryRoom:
            return 2
        }
    }
}

let doubleRoom: RoomType = .doubleRoom
doubleRoom.price
doubleRoom.numberOfAvailable

// MARK: - 8 задание. Уровни сложности в игре

enum DifficultyLevel {
    case light
    case medium
    case heavy
    case expert
    
    var enemyCount: Int {
        switch self {
        case .light:
            return 50
        case .medium:
            return 20
        case .heavy:
            return 11
        case .expert:
            return 5
        }
    }
    
    var timeLimit: String {
        switch self {
        case .light:
            return "30 minutes"
        case .medium:
            return "15 minutes"
        case .heavy:
            return "10 minutes"
        case .expert:
            return "5 minutes"
        }
    }
}

let level: DifficultyLevel = .medium
level.enemyCount
level.timeLimit

// MARK: - 9 задание. Прогноз погоды по облачности

enum Cloudiness {
    case clear
    case partlyCloudy
    case cloudy
    case overcast

    var rainfallProbability: String {
        switch self {
        case .clear:
            return "5%"
        case .partlyCloudy:
            return "20%"
        case .cloudy:
            return "40%"
        case .overcast:
            return "70%"
        }
    }
}

let precipitation: Cloudiness = .cloudy
precipitation.rainfallProbability

