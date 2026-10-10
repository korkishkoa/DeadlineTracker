import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. Створення сутностей (курсів)
        let devCourse = Course(name: "Програмування на C#")
        let netCourse = Course(name: "Комп'ютерні мережі (Cisco)")
        
        // 2. Створення завдань
        let lab1 = Assignment(title: "Бронювання квитків у кіно", type: .lab, isCompleted: true)
        let module1 = Assignment(title: "Модульна з БД SQL", type: .module, isCompleted: false)
        let lab2 = Assignment(title: "Налаштування маршрутизації в Packet Tracer", type: .lab, isCompleted: false)
        
        // 3. Додавання в колекцію
        devCourse.addAssignment(lab1)
        devCourse.addAssignment(module1)
        netCourse.addAssignment(lab2)
        
        print("=== СТАТУС НАВЧАННЯ ===")
        
        // 4. Безпечне розгортання optional (if let) та обробка елементів колекції
        if let pendingNetLabs = netCourse.getIncompleteLabs() {
            print("Увага! Є нездані лабораторні з курсу '\(netCourse.name)':")
            for lab in pendingNetLabs {
                print("- \(lab.getDetails())")
            }
        } else {
            print("Усі лабораторні з '\(netCourse.name)' здані!")
        }
    }
}
