import Foundation

// 1. Демонстрація protocol
protocol Taskable {
    var title: String { get }
    func getDetails() -> String
}

// 2. Демонстрація enum
enum AssignmentType {
    case lab
    case module
    case courseWork
}

// 3. Демонстрація struct (Сутність 1)
struct Assignment: Taskable {
    let id: UUID // константа let
    var title: String // змінна var
    var type: AssignmentType
    var isCompleted: Bool
    var score: Int? // демонстрація optional (оцінка може ще не стояти)
    
    // Ініціалізація
    init(title: String, type: AssignmentType, isCompleted: Bool = false) {
        self.id = UUID()
        self.title = title
        self.type = type
        self.isCompleted = isCompleted
    }
    
    // Метод протоколу
    func getDetails() -> String {
        let status = isCompleted ? "Здано" : "В процесі"
        return "Завдання: \(title) [Тип: \(type)] - \(status)"
    }
}

// 4. Демонстрація class (Сутність 2)
class Course {
    var name: String
    var assignments: [Assignment] // використання колекції
    
    init(name: String) {
        self.name = name
        self.assignments = []
    }
    
    func addAssignment(_ assignment: Assignment) {
        assignments.append(assignment)
    }
    
    // Демонстрація фільтрації колекції та повернення optional
    func getIncompleteLabs() -> [Assignment]? {
        let incomplete = assignments.filter { !$0.isCompleted && $0.type == .lab }
        
        // Умовна конструкція
        if !incomplete.isEmpty {
            return incomplete
        } else {
            return nil
        }
    }
}
