//
//  StudentListTableviewController.swift
//  CohortList
//
//  Created by Briana Bayne on 5/30/23.
//

import UIKit

class StudentListTableviewController: UITableViewController {
    
    // MARK: - OutLets
    
    //MARK - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - Methods
   
    
    // MARK: - Actions
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return StudentController.sharedInstance.students.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath)
        
        let student = StudentController.sharedInstance.students[indexPath.row]
        
        let studentToDisplay = student
        cell.textLabel?.text = studentToDisplay.studentName
        cell.detailTextLabel?.text = "ID:\(studentToDisplay.cohortID)"
        
        return cell
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Identifier
        if segue.identifier == "toDetailVC" {
            // Index
            if let indexPath = tableView.indexPathForSelectedRow {
                // Destination
                if let destinationVC = segue.destination as? StudentDetailViewController {
                    // Object to send
                    
                    // Object to recieve
                    
                }
            }
        }
    }
}
