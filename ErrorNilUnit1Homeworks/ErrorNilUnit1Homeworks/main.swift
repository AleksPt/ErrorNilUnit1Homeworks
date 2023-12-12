import Foundation

class Car {
    let brand: String
    let model: String
    let yearOfProduction: Int
    let isCruiseControl: Bool

    init(
        brand: String,
        model: String,
        yearOfProduction: Int,
        isCruiseControl: Bool
    ) {
        self.brand = brand
        self.model = model
        self.yearOfProduction = yearOfProduction
        self.isCruiseControl = isCruiseControl
    }
    
    func carAction() -> String? { nil }
    
    enum CarAction {}
}

class TruckCar: Car {
    let capacity: Int
    var cargoStatus: CarAction = .unloading
    
    init(
        brand: String,
        model: String,
        yearOfProduction: Int,
        isCruiseControl: Bool,
        capacity: Int
    ) {
        self.capacity = capacity
        super.init(
            brand: brand,
            model: model,
            yearOfProduction: yearOfProduction,
            isCruiseControl: isCruiseControl
        )
    }
    
    override func carAction() -> String {
        switch cargoStatus {
        case .loading:
            cargoStatus = .unloading
        case .unloading:
            cargoStatus = .loading
        }
        return cargoStatus.rawValue
    }
}

class SportCar: Car {
    let maxSpeed: Int
    var turboStatus: CarAction = .turboIsOff
    
    init(
        brand: String,
        model: String,
        yearOfProduction: Int,
        isCruiseControl: Bool,
        maxSpeed: Int
    ) {
        self.maxSpeed = maxSpeed
        super.init(
            brand: brand,
            model: model,
            yearOfProduction: yearOfProduction,
            isCruiseControl: isCruiseControl
        )
    }
    
    override func carAction() -> String {
        switch turboStatus {
        case .turboIsOn:
            turboStatus = .turboIsOff
        case .turboIsOff:
            turboStatus = .turboIsOn
        }
        return turboStatus.rawValue
    }
}

extension TruckCar {
    enum CarAction: String {
        case loading = "идет погрузка"
        case unloading = "идет разгрузка"
    }
}

extension SportCar {
    enum CarAction: String {
        case turboIsOn = "включен"
        case turboIsOff = "выключен"
    }
}

let honda = SportCar(
    brand: "Honda",
    model: "NSX",
    yearOfProduction: 2005,
    isCruiseControl: false,
    maxSpeed: 260
)

honda.carAction()

print("""
Марка: \(honda.brand)
Модель: \(honda.model)
Год выпуска: \(honda.yearOfProduction)
Круиз-контроль: \(honda.isCruiseControl ? "присутствует" : "отсутствует")
Максимальная скорость: \(honda.maxSpeed) км/ч
Турбонаддув: \(honda.carAction())
""")

let volvo = TruckCar(
    brand: "Volvo",
    model: "FH",
    yearOfProduction: 2010,
    isCruiseControl: true,
    capacity: 20000
)

volvo.carAction()

print("""
Марка: \(volvo.brand)
Модель: \(volvo.model)
Год выпуска: \(volvo.yearOfProduction)
Круиз-контроль: \(volvo.isCruiseControl ? "присутствует" : "отсутствует")
Грузоподъемность: \(volvo.capacity / 1000) тонн
Статус погрузки: \(volvo.carAction())
""")
