import UIKit

class ViewController: UIViewController {
    
    // Dependency Injection: Контролер залежить від абстракції
    var repository: TaskRepository?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if repository == nil {
            repository = MockTaskRepository()
        }
        
        guard let tasks = repository?.fetchTasks() else { return }
        
        // Використовуємо патерн Стратегія
        let debtStrategy = DebtSortStrategy()
        let sortedTasks = debtStrategy.sort(assignments: tasks)
        
        for task in sortedTasks {
            print(task.getDetails())
        }
    }
}
