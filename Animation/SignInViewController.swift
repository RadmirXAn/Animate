//
//  SignInViewController.swift
//  Animation
//
//  Created by Радмир Юмагужин on 26.11.2020.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var login: UITextField!
    
    @IBOutlet weak var pass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        login.center.x -= view.bounds.width
        pass.center.x += view.bounds.width
        label.center.y -= view.bounds.height
        logo.center.y -= view.bounds.height
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0) {
            self.login.center.x += self.view.bounds.width
            self.pass.center.x -= self.view.bounds.width
            self.label.center.y += self.view.bounds.height
            self.logo.center.y += self.view.bounds.height
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
