import Foundation

class TypeAdapter {
    static func fromString(_ input: String) -> AssignmentType {
        switch input.lowercased() {
        case "лаба", "лабораторна":
            return .lab
        case "модуль":
            return .module
        case "курсова", "курсач":
            return .courseWork
        default:
            return .lab
        }
    }
}
