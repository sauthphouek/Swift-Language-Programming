import Foundation

enum AttendentType {
    case present
    case absent
}

struct Student {
    let name: String
    var attendance: [Date: Bool]
}

class AttendanceManager {
    var students: [Student]

    init(students: [Student]) {
        self.students = students
    }

    func markAttendance(for studentName: String, on date: Date, attended: Bool) {
        if let index: Array<Student>.Index = students.firstIndex(where: { $0.name == studentName }) {
            students[index].attendance[date] = attended
        }
    }

    func getAttendance(for studentName: String, on date: Date) -> Bool? {
        return students.first(where: { $0.name == studentName })?.attendance[date]
    }
}

// Usage
var students: [Student]
students = [
    Student(name: "John Doe", attendance: [:]),
    Student(name: "Jonh Stone", attendance: [:])
]
let manager: AttendanceManager = AttendanceManager(students: students)

let today: Date = Date()
manager.markAttendance(for: "John Doe", on: today, attended: true)
print(manager.getAttendance(for: "John Doe", on: today) ?? "No record")

