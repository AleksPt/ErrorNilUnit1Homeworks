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

