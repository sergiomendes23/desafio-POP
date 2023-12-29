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
