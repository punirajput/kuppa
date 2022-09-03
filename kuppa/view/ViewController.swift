//
//  ViewController.swift
//  kuppa
//
//  Created by Deepak Singh Shekhawat on 26/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var applebtn: UIButton!
    @IBOutlet var loginbtn: UIButton!
    @IBOutlet var forgetpasswordbtn: UIButton!
    @IBOutlet var passwordtxt: UITextField!
    @IBOutlet var emailtxt: UITextField!
    @IBOutlet var googlebtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        googlebtn.layer.borderColor = UIColor.lightGray.cgColor
        googlebtn.layer.cornerRadius = 10
        googlebtn.clipsToBounds = true
        googlebtn.layer.borderWidth = 1
        applebtn.layer.cornerRadius = 10
        applebtn.clipsToBounds = true
        applebtn.layer.borderWidth = 1
        applebtn.layer.borderColor = UIColor.lightGray.cgColor
        loginbtn.layer.cornerRadius = 10
        loginbtn.clipsToBounds = true
        
    }

    @IBAction func signupbtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "signupViewController") as! signupViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func forgetpassbtnTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Forget") as! ForgetPasswordViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func loginbtnTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Tab") as! UITabBarController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func gogglebtnTapped(_ sender: Any) {
    }
    @IBAction func applebtnTapped(_ sender: Any) {
    }
}

