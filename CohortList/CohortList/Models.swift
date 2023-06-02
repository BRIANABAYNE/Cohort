//
//  Models.swift
//  CohortList
//
//  Created by Briana Bayne on 5/30/23.
//

import Foundation

class Student {
    var studentName: String
    var cohortID: Int
    var studentDescription: String
    
    init(studentName: String, cohortID: Int, studentDescription: String) {
        self.studentName = studentName
        self.cohortID = cohortID
        self.studentDescription = studentDescription
    }
}

// MARK: - Extensions
extension Student: Equatable {
    static func == (lhs: Student, rhs: Student) -> Bool {
        return lhs.studentName == rhs.studentName && lhs.cohortID == rhs.cohortID && lhs.studentDescription == rhs.studentDescription
    }
}
