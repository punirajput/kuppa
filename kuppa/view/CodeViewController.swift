//
//  CodeViewController.swift
//  kuppa
//
//  Created by Deepak Singh Shekhawat on 31/08/22.
//

import UIKit

class CodeViewController: UIViewController {

    @IBOutlet var emaillbl: UILabel!
    @IBOutlet var codebtn: UIButton!
    var emailid: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        emaillbl.text = emailid
        codebtn.layer.cornerRadius = 10
        codebtn.clipsToBounds = true
    }
    

    @IBAction func codebtnTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CongratsViewController") as! CongratsViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func resendbtnTapped(_ sender: Any) {
    }
}
