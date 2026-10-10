import Foundation

// Абстракція для роботи з даними
protocol TaskRepository {
    func fetchTasks() -> [Assignment]
}

// Тестова Mock реалізація
class MockTaskRepository: TaskRepository {
    func fetchTasks() -> [Assignment] {
        let task1 = AssignmentBuilder().setTitle("Комп'ютерні мережі").setType(.lab).setIsCompleted(false).build()
        let task2 = AssignmentBuilder().setTitle("Вища математика").setType(.module).setIsCompleted(true).build()
        let task3 = AssignmentBuilder().setTitle("Проєктування БД").setType(.courseWork).setIsCompleted(false).build()
        
        return [task1, task2, task3]
    }
}
