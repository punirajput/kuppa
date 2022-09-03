//
//  signupViewController.swift
//  kuppa
//
//  Created by Deepak Singh Shekhawat on 30/08/22.
//

import UIKit

class signupViewController: UIViewController {

    @IBOutlet var passtxt: UITextField!
    @IBOutlet var mailtxt: UITextField!
    @IBOutlet var nametxt: UITextField!
    @IBOutlet var registerbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerbtn.layer.cornerRadius = 10
        registerbtn.clipsToBounds = true
        
    }
    
    @IBAction func registerbtnTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CodeViewController") as! CodeViewController
        vc.emailid = mailtxt.text
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func loginbtnTapped(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func termbtnTapped(_ sender: Any) {
    }
}
