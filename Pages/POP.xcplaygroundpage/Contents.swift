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
