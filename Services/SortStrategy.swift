import Foundation

// Протокол для сортування
protocol SortStrategy {
    func sort(assignments: [Assignment]) -> [Assignment]
}

// Стратегія 1: Сортування за алфавітом
struct AlphabeticalSortStrategy: SortStrategy {
    func sort(assignments: [Assignment]) -> [Assignment] {
        return assignments.sorted(by: { (task1: Assignment, task2: Assignment) -> Bool in
            return task1.title < task2.title
        })
    }
}

// Стратегія 2: Сортування за боргами
struct DebtSortStrategy: SortStrategy {
    func sort(assignments: [Assignment]) -> [Assignment] {
        return assignments.sorted(by: { (task1: Assignment, task2: Assignment) -> Bool in
            return !task1.isCompleted && task2.isCompleted
        })
    }
}
