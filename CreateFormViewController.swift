//
//  CreateFormViewController.swift
//  DropboxDemo
//
//  Created by Gilbert Guerrero on 9/16/15.
//  Copyright © 2015 Gilbert Guerrero. All rights reserved.
//

import UIKit

class CreateFormViewController: UIViewController {

    @IBOutlet weak var termsView: UIView!
    @IBOutlet weak var PasswordWeak: UIImageView!
    @IBOutlet weak var PasswordGreat: UIImageView!
    
    @IBOutlet weak var FirstNameField: UITextField!
    @IBOutlet weak var LastNameField: UITextField!
    @IBOutlet weak var EmailField: UITextField!
    @IBOutlet weak var PasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        termsView.hidden = true
        PasswordWeak.hidden = true
        PasswordGreat.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackButton(sender: AnyObject) {
        
        navigationController!.popViewControllerAnimated(true)
    
    }

    @IBAction func onCreateButton(sender: AnyObject) {
        
        termsView.hidden = false
        view.endEditing(true)
        
    }
    
    @IBAction func onDismissActionSheet(sender: AnyObject) {
        
        termsView.hidden = true
    
    }
    
    @IBAction func onNameField(sender: AnyObject) {
        
        self.LastNameField.becomeFirstResponder()
            
    }
    

    @IBAction func onLastNameField(sender: AnyObject) {

        self.EmailField.becomeFirstResponder()
    
    }
    
    
    @IBAction func onEmailField(sender: AnyObject) {
        
        self.PasswordField.becomeFirstResponder()

    }
    
    @IBAction func onPasswordField(sender: AnyObject) {

        termsView.hidden = false
        view.endEditing(true)

    }
    
    @IBAction func onPasswordBegin(sender: AnyObject) {
        
        PasswordWeak.hidden = false
        
    }
    
    @IBAction func onPasswordChange(sender: AnyObject) {

        PasswordGreat.hidden = false
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
