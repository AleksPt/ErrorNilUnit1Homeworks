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


