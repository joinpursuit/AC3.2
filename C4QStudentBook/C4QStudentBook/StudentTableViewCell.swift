//
//  StudentTableViewCell.swift
//  C4QStudentBook
//
//  Created by Kadell on 9/30/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       profileImageView.layer.cornerRadius = 35
        profileImageView.layer.masksToBounds = true
    }
    
    func setData(student: Student) {
    let studentInfo = student.info
        profileImageView.image = UIImage(named: student.info.imageName)
        nameLabel.text = studentInfo.firstName + " " + studentInfo.lastName
        self.emailLabel.text = studentInfo.email
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
