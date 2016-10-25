//
//  DetailViewController.swift
//  C4QStudentBook
//
//  Created by Kadell on 9/30/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var studentIDLabel: UILabel!
    @IBOutlet weak var funFactTextView: UITextView!
    
    
    var student: Student?
    private var linkedinAcct: String?
    private var githubAcct: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        // Do any additional setup after loading the view.
    }
    
    func setupData() {
        guard let stu = student else { return }
        emailLabel.text = stu.info.email
        studentIDLabel.text = "Student ID" + String(stu.id)
        funFactTextView.text = stu.funFact
        profileImageView.image = UIImage(named: stu.info.imageName)
        linkedinAcct = stu.linkedin
        githubAcct = stu.github
        profileImageView.layer.cornerRadius = 100
        profileImageView.layer.masksToBounds = true
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func linkedButtonTapped(_ sender: UIButton) {
        guard let linkedin = linkedinAcct else {return}
        let linkedinURLString = "https://www.linkedin.com/in/\(linkedin)"
        let url = URL(string: linkedinURLString)
        UIApplication.shared.open(url!, options: [:] , completionHandler: nil)
        
    }
    
    @IBAction func githubButtonTapped(_ sender: UIButton) {
        guard let github = githubAcct else {return}
        let githubURLString = "https://github.com/\(github)"
        let url = URL(string: githubURLString)
        UIApplication.shared.open(url!, options: [:] , completionHandler: nil)
    }
    
}
