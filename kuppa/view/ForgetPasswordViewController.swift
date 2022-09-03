//
//  ForgetPasswordViewController.swift
//  kuppa
//
//  Created by Deepak Singh Shekhawat on 31/08/22.
//

import UIKit

class ForgetPasswordViewController: UIViewController {

    @IBOutlet var phoneimg: UIImageView!
    @IBOutlet var emailimg: UIImageView!
    @IBOutlet var continueforgotbtn: UIButton!
    @IBOutlet var emailbtn: UIButton!
    @IBOutlet var phonebtn: UIButton!
    var emailselected = true
    override func viewDidLoad() {
        super.viewDidLoad()
        continueforgotbtn.layer.cornerRadius = 10
        continueforgotbtn.clipsToBounds = true
        emailbtn.layer.cornerRadius = 10
        emailbtn.clipsToBounds = true
        phonebtn.layer.cornerRadius = 10
        emailbtn.clipsToBounds = true
        phoneimg.image = UIImage.init(named: "phone")
         emailimg.image = UIImage.init(named: "mail")
         
    }
    
    @IBAction func emailbtnTapped(_ sender: Any) {
        emailselected = true
        selectrightbtn()
        
    }
    
    @IBAction func phonebtnTapped(_ sender: Any) {
        emailselected = false
        selectrightbtn()
    }
    @IBAction func continueforgotTapped(_ sender: Any) {
    }
    func selectrightbtn()
    {
     
        if emailselected == true
        {
           
            emailbtn.layer.borderColor = UIColor.green.cgColor
            emailbtn.layer.borderWidth = 1
            phonebtn.layer.borderColor = UIColor.white.cgColor
        }
        else
        {
            
            phonebtn.layer.borderColor = UIColor.green.cgColor
            phonebtn.layer.borderWidth = 1
            emailbtn.layer.borderColor = UIColor.white.cgColor
           
          
        }
    }

}
