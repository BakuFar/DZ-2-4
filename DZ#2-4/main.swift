//
//  main.swift
//  DZ#2-4
//
//  Created by Фархат Сталбек уулу on 26/10/22.
//

import Foundation

//#1. Создать класс Недвижимость
//Параметры: Площадь, цена, адрес
//Методы: Изменение цены, отображение информации

class Nedvij {
    private var name: String = ""
    private var area: Int = 0
    private var price: Int = 0
    private var address: String = ""
    
    init(name: String, area: Int, price: Int, address: String) {
        self.name = name
        self.area = area
        self.price = price
        self.address = address
    }
    func changePrice(newPrice: Int) {
        self.price = newPrice
    }
    func getInfo() {
        print("name - \(self.name)\narea - \(self.area) m2\nprice - $ \(self.price) / m2\naddress - \(self.address)")
    }
    func getName() -> String {
        return self.name
    }
    func getArea() -> Int {
        return self.area
    }
    func getPrice() -> Int {
        return self.price
    }
    func getAddress() -> String {
        return self.address
    }
}
let victory = Nedvij(name: "Victory", area: 2500, price: 500, address: "Ibraimova 103")

victory.changePrice(newPrice: 510)
victory.getInfo()
print("")

//Наследовать от него классы: Квартира, Склад, Гараж
//В классе Квартира добавить параметр: количество жильцов, массив с удобствами(например: сан.узел, интернет и тд)
//Переопределить метод из базового класса и отобразить все данные об объекте в одной строке

class Flat: Nedvij {
    private var residents: Int = 0
    private var amenities: [String] = []
    
    init(name: String, area: Int, price: Int, address: String, residents: Int, amenities: [String]) {
        self.residents = residents
        self.amenities = amenities
        super .init(name: name, area: area, price: price, address: address)
    }
    override func getInfo() {
        print("name - \(self.getName())\narea - \(self.getArea()) m2\nprice - $ \(self.getPrice()) / m2\naddress - \(self.getAddress())\ncount of residents - \(self.residents)\namenities - \(amenities)")

    }
}
let kv1 = Flat(name: "KV # 1", area: 66, price: 700, address: "JK Frunze", residents: 5, amenities: ["Wifi", "TV"])

kv1.getInfo()
print("")

//В классе склад доп.параметры - какой компании пренадлежит и массив с имеющимися товарами на складе
//Добавить метод, отображающий товары на складе

class Storehouse: Nedvij {
    private var owner: String = ""
    private var product: [String] = []
    
    init(name: String, area: Int, price: Int, address: String, owner: String, product: [String]) {
        self.owner = owner
        self.product = product
        super.init(name: name, area: area, price: price, address: address)
    }
    override func getInfo() {
        print("Products of \(owner) - \(product)")
    }
}
let store1 = Storehouse(name: "Storehouse N1", area: 500, price: 300, address: "Victory",owner: "OsOO N&Q", product: ["Sofa", "Table", "Chair"])

store1.getInfo()
print("")

//В классе Гараж добавить параметры - какая машина находится внутри и есть ли подвал внутри гаража
//Доступ к свойствам ограничить модификаторами доступа

class Garage: Nedvij {
    private var basement: Bool
    private var carIn: String
    
    init(name: String, area: Int, price: Int, address: String, basement: Bool, carIn: String) {
        self.basement = basement
        self.carIn = carIn
        super .init(name: name, area: area, price: price, address: address)
    }
    override func getInfo() {
        print("basement - \(basement)\ncar in garage - \(carIn)")
    }
}
let garage1 = Garage(name: "N52", area: 10, price: 50, address: "Plaza", basement: true, carIn: "Toyota")

garage1.getInfo()
