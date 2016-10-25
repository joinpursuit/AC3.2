//
//  LoginPageViewController.swift
//  C4QStudentBook
//
//  Created by Kadell on 10/5/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit

class LoginPageViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var students = [Student]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTextField.delegate = self
        
        for studentDict in ac32_students {
            let student = Student(studentDict: studentDict)
            students.append(student)
            
        }
    }
    
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        guard let emailString = emailTextField.text else { return }
        guard let pwString = passwordTextField.text else { return }
        
        guard let student = students.filter({ $0.info.email == emailString}).first else {
            showError(message: "Invalid Email")
            return
        }
        if pwString == String(student.id) {
            performSegue(withIdentifier: "studentTVSegueID", sender: student)
            
        } else {
           showError(message: "Invalid Password")
        }
//        let doesExist = students.contains{ (student) -> Bool in
//            return emailString == student.info.email
//    }
//        if doesExist {
//        
//        } else {
//        
//        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "studentTVSegueID" {
            let navController = segue.destination as! UINavigationController
            let destinationVC = navController.topViewController as? StudentsTableViewController
            destinationVC?.currentStudent = sender as! Student
        }
    }
    
    func showError(message: String) {
        let errorAlertView = UIAlertController(title: "ERROR", message: message, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        errorAlertView.addAction(okAction)
        present(errorAlertView, animated: true, completion: nil)
    }
    
//    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
//        if textField == self.passwordTextField {
//            if let characterCount = self.passwordTextField.text?.characters.count  {
//                if characterCount >= 4 {
//                    loginButton.backgroundColor = .blue
//                } else {
//                    loginButton.backgroundColor = .red
//                }
//            }
//            
//        }
    
            func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange,
                replacementString string: String) -> Bool {
                if textField == self.passwordTextField {
                    print("location: \(range.location) textCount: \(textField.text?.characters.count)")
                    var count = 1
                    if range.location == 3 && textField.text?.characters.count != 4 || range.location > 3 && textField.text?.characters.count == 3 {
                        count = 0
                    }
                    if count == 1 {
                            loginButton.backgroundColor = .blue
                        } else {
                            loginButton.backgroundColor = .red
                        }
                }
               return true
            }
    
    }

        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destinationViewController.
         // Pass the selected object to the new view controller.
         }
         */
        

