//
//  AnimateViewController.swift
//  Animation
//
//  Created by Радмир Юмагужин on 26.11.2020.
//

import UIKit

class AnimateViewController: UIViewController {

    
    @IBOutlet weak var apple: UIImageView!
    
    @IBOutlet weak var text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        apple.center.x -= view.bounds.width
        text.center.x += view.bounds.width
        self.apple.frame.size.width -= 250
        self.apple.frame.size.height -= 250
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat, .autoreverse], animations:{
            self.apple.center.x += self.view.bounds.width
            self.text.center.x -= self.view.bounds.width
            self.apple.frame.size.width += 250
            self.apple.frame.size.height += 250
        })
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
