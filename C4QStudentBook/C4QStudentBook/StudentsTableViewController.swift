//
//  StudentsTableViewController.swift
//  C4QStudentBook
//
//  Created by Kadell on 9/30/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit

class StudentsTableViewController: UITableViewController {

    var students = [Student]()
    var currentStudent: Student!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = currentStudent.info.firstName + " " + currentStudent.info.lastName
        
        for studentDict in ac32_students {
            let student = Student(studentDict: studentDict)
            students.append(student)
        }
    }

       // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.students.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentTVCID", for: indexPath) as! StudentTableViewCell
        
        
        let student = self.students[indexPath.row]
        cell.setData(student: student)
        return cell
    }
    
    
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedStudent = self.students[indexPath.row]
        performSegue(withIdentifier: "studentDetailSegueID", sender: selectedStudent)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "studentDetailSegueID" {
            let detailController = segue.destination as! DetailViewController
            let selectedStudent = sender as? Student
            detailController.student = selectedStudent
            
        }
    
    }
   
}
