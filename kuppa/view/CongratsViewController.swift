//
//  CongratsViewController.swift
//  kuppa
//
//  Created by Deepak Singh Shekhawat on 31/08/22.
//

import UIKit

class CongratsViewController: UIViewController {

    @IBOutlet var getstartbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        getstartbtn.layer.cornerRadius = 10
        getstartbtn.clipsToBounds = true
    }
    
    @IBAction func getstartTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Tab") as! UITabBarController
        
        self.navigationController?.pushViewController(vc, animated: true)

        
    }
}
