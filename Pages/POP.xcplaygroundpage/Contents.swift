import UIKit

protocol BankAccount {
    var debit: Int { get }
    var credit: Int { get }
}

protocol AccountBalance {
    var balance: Int { get }
}

struct SergioAccount: BankAccount, AccountBalance {
    let name: String
    let debit: Int
    let credit: Int
    
    var balance: Int {
        debit - credit
    }
}
let saldo = SergioAccount(name: "Sérgio", debit: 1000, credit: 300)
print("O \(saldo.name) ganhou um total de \(saldo.debit) reais e gastou \(saldo.credit) reais. Sobrou pra ele \(saldo.balance) reais")

protocol Bird {
    var name: String { get }
    var canFly: Bool { get }
}
protocol Flyable {
    var maximumSpeed: Double { get }
}

struct Parrot: Bird, Flyable {
    let name: String
    let amplitude: Double
    let frequency: Double
    let canFly: Bool = true

    var maximumSpeed: Double {
        3 * amplitude * frequency
    }
}
let parrot = Parrot(name: "Papagaio", amplitude: 12.0, frequency: 5.0)
print("O \(parrot.name) voa na velocidade máixima de \(parrot.maximumSpeed) km/h")

struct Penguin {
    let name: String
    let canFly: Bool = false
}
let penguin = Penguin(name: "Pinguim de Madagascar")
print("\(penguin.name) é um pássaro que voa? \(penguin.canFly ? "Sim!" : "Não, mas é detetive e faz missões!")")

extension Bird {
    var canFly: Bool {self is Flyable}
}

struct Eagle: Bird, Flyable{
    let name: String
    let amplitude: Double
    let frequency: Double

    var maximumSpeed: Double {
        3 * amplitude * frequency
    }
}
struct Chick: Bird{
    let name: String
}
let eagle = Eagle(name: "Águia", amplitude: 13.0, frequency: 4.0)
print("\(eagle.name) voa? \(eagle.canFly ? "Sim!": "Não!") E mergulha para caçar na velocidade de \(eagle.maximumSpeed) KM/h")
let chick = Chick(name: "Pintinho piu")
print("\(chick.name) voa? \(chick.canFly ? "Sim!": "Não!") Só pia... piu piu piu")
