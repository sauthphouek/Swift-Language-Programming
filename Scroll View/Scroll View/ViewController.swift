//
//  ViewController.swift
//  Scroll View
//
//  Created by Sauth.P on 7/4/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumberTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!

    // saveData
    static let saveData = "SaveData"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        phoneNumberTxt.heightAnchor.constraint(equalToConstant: 50 ).isActive = true
        passwordTxt.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonLogin.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        // keyboard will show
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        // keyboard will hide
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        //
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil){
        [weak self]
        notification in
            self?.keyboardWillShow(notification:  notification )
        }
        
        // remove keyboard
        removeKeyboard()
        
        // button event
        buttonLogin.addTarget(self, action: #selector(handleLoginSubmit), for: .touchUpInside)

        // shadow effect of button
        buttonLogin.layer.shadowColor = UIColor.blue.cgColor
        buttonLogin.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        buttonLogin.layer.masksToBounds = false
        buttonLogin.layer.shadowRadius = 10.0
        buttonLogin.layer.shadowOpacity = 0.2
        
        
        // post notification

        NotificationCenter.default.addObserver(forName: Notification.Name.saveData, object: nil, queue: nil){
            notification in
            print(notification.userInfo)
        }

        
        
        
        
    }
    
    @objc func removeKeyboard() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        tapGestureRecognizer.cancelsTouchesInView = false
        view.addGestureRecognizer(tapGestureRecognizer)
    }

    
    // on tap handler to hide keyboard
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)  // Resign first responder to hide keyboard
    }
    
    // keybaord will show
    @objc func keyboardWillShow(notification: Notification) {
        guard let userInfo  = notification.userInfo as? [String: Any],
              let frame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
            return
        }
        
        bottomConstraint.constant = frame.height
        view.layoutIfNeeded()
        
    }
    
    // keyboard will hide
    @objc func keyboardWillHide(notification: Notification) {
        bottomConstraint.constant = 30
        view.layoutIfNeeded()
        
    }
    
    
    // submit button handler
    @objc func handleLoginSubmit() {
        if phoneNumberTxt.text?.isEmpty == true || passwordTxt.text?.isEmpty == true {
            let alert = UIAlertController(title: "Field Requried", message: "Please fill all the required field", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            self.present(alert, animated: true)
        }  else {

            NotificationCenter.default.post(name: Notification.Name.saveData, object: nil, userInfo: ["userName": phoneNumberTxt, "password": passwordTxt])

        }
    }

}

