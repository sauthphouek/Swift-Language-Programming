//
//  ViewController.swift
//  NavigationController
//
//  Created by Sauth.P on 21/4/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // delay 1 second
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            // create a new view controller
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
            self.present(vc, animated: true, completion: nil)
        }
        
        
    }


}

