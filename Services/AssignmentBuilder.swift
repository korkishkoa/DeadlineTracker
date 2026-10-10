import Foundation

class AssignmentBuilder {
    private var title: String = "Нове завдання"
    private var type: AssignmentType = .lab 
    private var isCompleted: Bool = false
    private var score: Int? = nil
    
    func setTitle(_ title: String) -> AssignmentBuilder {
        self.title = title
        return self
    }
    
    func setType(_ type: AssignmentType) -> AssignmentBuilder {
        self.type = type
        return self
    }
    
    func setIsCompleted(_ isCompleted: Bool) -> AssignmentBuilder {
        self.isCompleted = isCompleted
        return self
    }
    
    func setScore(_ score: Int) -> AssignmentBuilder {
        self.score = score
        return self
    }
    
    func build() -> Assignment {
        var assignment = Assignment(title: self.title, type: self.type, isCompleted: self.isCompleted)
        assignment.score = self.score
        return assignment
    }
}
