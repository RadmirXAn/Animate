//
//  CandyViewController.swift
//  Animation
//
//  Created by Радмир Юмагужин on 26.11.2020.
//

import UIKit

class CandyViewController: UIViewController {

    
    @IBOutlet weak var swift: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0, delay: 1.0, options: [.repeat, .autoreverse], animations: {
            self.swift.frame.size.width = 105
            self.swift.frame.size.height = 54
        }, completion: nil)
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
