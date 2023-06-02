//
//  StudentController.swift
//  CohortList
//
//  Created by Briana Bayne on 5/30/23.
//

import Foundation

class StudentController {
    
    //MARK: - Properties
    static let sharedInstance = StudentController()
    //SSOT - Single Source of Truth
    var students: [Student] = []
    
    //MARK: - CRUD Functions
    func createStudent(studentName: String, cohortID: Int, studentDescrption: String) {
        let newStudent = Student(studentName: studentName, cohortID: cohortID, studentDescription: studentDescrption)
        students.append(newStudent)
    }
    
    func updateStudent(student: Student, newName: String, newCohort: Int, newStudentDetails: String) {
        student.studentName = newName
        student.cohortID = newCohort
        student.studentDescription = newStudentDetails
    }
    
    func deleteStudent(student: Student) {
        guard let index = students.firstIndex(of: student) else { return }
        students.remove(at: index)
    }
} // End of class

