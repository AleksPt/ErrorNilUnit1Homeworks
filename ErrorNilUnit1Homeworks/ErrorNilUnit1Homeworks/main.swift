import Foundation

enum ActionsForCar {
    enum Engine: String {
        case start = "Двигатель запущен"
        case stop = "Двигатель выключен"
    }
    
    enum Window: String {
        case open = "Окна открыты"
        case closed = "Окна закрыты"
    }
    
    enum Cargo {
        case load
        case unload
    }
}

struct SportCar {
    let carBrand: String
    let yearOfIssue: Int
    let maxTrunkCapacity: Int
    var currentVolumeTrunk: Int = 0 {
        didSet {
            print("Багажник заполнен на \(currentVolumeTrunk) кг.\nСвободно для загрузки: \(maxTrunkCapacity - currentVolumeTrunk) кг")
        }
    }
    
    var engine: ActionsForCar.Engine
    var window: ActionsForCar.Window
    
    mutating func changeEngineStatus(is status: ActionsForCar.Engine) {
        self.engine = status
        print(engine.rawValue)
    }
    
    mutating func changeWindowStatus(is status: ActionsForCar.Window) {
        self.window = status
        print(window.rawValue)
    }
    
    mutating func changeCargo(is status: ActionsForCar.Cargo, quantity: UInt) {
        switch status {
        case .load:
            let result = currentVolumeTrunk + Int(quantity)
            guard result <= maxTrunkCapacity else {
                print("Недостаточно места в багажнике. Максимальная вместимость: \(maxTrunkCapacity) кг, превышение на \(result - maxTrunkCapacity) кг")
                return
            }
            currentVolumeTrunk += Int(quantity)
        case .unload:
            let result = currentVolumeTrunk - Int(quantity)
            guard result >= 0 else {
                currentVolumeTrunk = 0
                return
            }
            currentVolumeTrunk -= Int(quantity)
        }
    }
}

var porsche = SportCar(
    carBrand: "Porsche",
    yearOfIssue: 2005,
    maxTrunkCapacity: 260,
    engine: .stop,
    window: .closed
)

porsche.changeEngineStatus(is: .start)
porsche.changeWindowStatus(is: .open)
porsche.changeCargo(is: .load, quantity: 111)
porsche.changeCargo(is: .unload, quantity: 56)

print("""
    Марка: \(porsche.carBrand)
    Год выпуска: \(porsche.yearOfIssue)
    Максимальная вместимость багажника: \(porsche.maxTrunkCapacity) кг
    Багажник заполнен на: \(porsche.currentVolumeTrunk) кг
    Свободно для загрузки: \(porsche.maxTrunkCapacity - porsche.currentVolumeTrunk) кг
    Статус двигателя: \(porsche.engine.rawValue)
    Статус окон: \(porsche.window.rawValue)
    """)

var nissan = SportCar(
    carBrand: "Nissan",
    yearOfIssue: 2010,
    maxTrunkCapacity: 300,
    engine: .start,
    window: .open
)

nissan.changeEngineStatus(is: .start)
nissan.changeWindowStatus(is: .open)
nissan.changeCargo(is: .load, quantity: 500)

print("""
    Марка: \(nissan.carBrand)
    Год выпуска: \(nissan.yearOfIssue)
    Максимальная вместимость багажника: \(nissan.maxTrunkCapacity) кг
    Багажник заполнен на: \(nissan.currentVolumeTrunk) кг
    Свободно для загрузки: \(nissan.maxTrunkCapacity - nissan.currentVolumeTrunk) кг
    Статус двигателя: \(nissan.engine.rawValue)
    Статус окон: \(nissan.window.rawValue)
    """)

struct Truck {
    let carBrand: String
    let yearOfIssue: Int
    let maxTruckBody: Int
    var currentVolumeTruckBody: Int = 0 {
        didSet {
            print("Кузов заполнен на \(currentVolumeTruckBody) кг.\nСвободно для загрузки: \(maxTruckBody - currentVolumeTruckBody) кг")
        }
    }
    
    var engine: ActionsForCar.Engine
    var window: ActionsForCar.Window
    
    mutating func changeEngineStatus(is status: ActionsForCar.Engine) {
        self.engine = status
        print(engine.rawValue)
    }
    
    mutating func changeWindowStatus(is status: ActionsForCar.Window) {
        self.window = status
        print(window.rawValue)
    }
    
    mutating func changeCargo(is status: ActionsForCar.Cargo, quantity: UInt) {
        switch status {
        case .load:
            let result = currentVolumeTruckBody + Int(quantity)
            guard result <= maxTruckBody else {
                print("Недостаточно места в кузове. Максимальная вместимость: \(maxTruckBody) кг, превышение на \(result - maxTruckBody) кг")
                return
            }
            currentVolumeTruckBody += Int(quantity)
        case .unload:
            let result = currentVolumeTruckBody - Int(quantity)
            guard result >= 0 else {
                currentVolumeTruckBody = 0
                return
            }
            currentVolumeTruckBody -= Int(quantity)
        }
    }
}

var scania = Truck(
    carBrand: "Scania",
    yearOfIssue: 2016,
    maxTruckBody: 15000,
    engine: .stop,
    window: .closed
)

scania.changeEngineStatus(is: .start)
scania.changeWindowStatus(is: .open)
scania.changeCargo(is: .load, quantity: 12000)
scania.changeCargo(is: .unload, quantity: 7500)

print("""
    Марка: \(scania.carBrand)
    Год выпуска: \(scania.yearOfIssue)
    Максимальная вместимость багажника: \(scania.maxTruckBody) кг
    Багажник заполнен на: \(scania.currentVolumeTruckBody) кг
    Свободно для загрузки: \(scania.maxTruckBody - scania.currentVolumeTruckBody) кг
    Статус двигателя: \(scania.engine.rawValue)
    Статус окон: \(scania.window.rawValue)
    """)

var kenworth = Truck(
    carBrand: "Kenworth",
    yearOfIssue: 2016,
    maxTruckBody: 20000,
    engine: .stop,
    window: .closed
)

kenworth.changeEngineStatus(is: .start)
kenworth.changeWindowStatus(is: .open)
kenworth.changeCargo(is: .load, quantity: 25000)
kenworth.changeCargo(is: .unload, quantity: 7500)

print("""
    Марка: \(kenworth.carBrand)
    Год выпуска: \(kenworth.yearOfIssue)
    Максимальная вместимость кузова: \(kenworth.maxTruckBody) кг
    Кузов заполнен на: \(kenworth.currentVolumeTruckBody) кг
    Свободно для загрузки: \(kenworth.maxTruckBody - kenworth.currentVolumeTruckBody) кг
    Статус двигателя: \(kenworth.engine.rawValue)
    Статус окон: \(kenworth.window.rawValue)
    """)
