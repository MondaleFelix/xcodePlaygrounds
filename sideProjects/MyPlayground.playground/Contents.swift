import Foundation

enum EmployeeType{
    case manager, traditional
}

protocol Payable {
    func pay() -> Paycheck
}

struct Paycheck {
    let base: Double
    let benefits: Double
    let deductions: Double
    let vacation: Double
}

class Employee{
    let name: String
    let address: String
    let startDate: Date
    let type: EmployeeType
    
    init(name: String, address: String, startDate: Date, type: EmployeeType){
        self.name = name
        self.address = address
        self.startDate = startDate
        self.type = type
    }
    
}


class HourlyEmployee: Employee, Payable{
    var hourlyWage = 15.00
    var hoursWorked = 0.00
    let vacation = 0
    
    func pay() -> Paycheck {
        let base = hoursWorked * hourlyWage
        return Paycheck(base: base, benefits: 0, deductions: 0, vacation: 0)
    }
    
}


class SalariedEmployee: Employee, Payable{
    var salary = 50000.00
    var benefits = 1000.00
    var deductions = 0.0
    var vacation = 2.0
    
    func pay() -> Paycheck {
        let monthly = salary/12
        return Paycheck(base: monthly, benefits: benefits, deductions: deductions, vacation: vacation)
    }
    
}

func pay(employee: Payable){
    employee.pay()
}
