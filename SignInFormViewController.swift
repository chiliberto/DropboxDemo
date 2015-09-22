//
//  SignInFormViewController.swift
//  DropboxDemo
//
//  Created by Gilbert Guerrero on 9/16/15.
//  Copyright © 2015 Gilbert Guerrero. All rights reserved.
//

import UIKit

class SignInFormViewController: UIViewController {
    
    @IBOutlet weak var EmailField: UITextField!
    @IBOutlet weak var PasswordField: UITextField!

    @IBOutlet weak var ForgotPasswordView: UIView!
    
    @IBOutlet weak var SignInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        ForgotPasswordView.hidden = true
        SignInButton.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackButton(sender: AnyObject) {
        
        navigationController!.popViewControllerAnimated(true)

    }
    
    @IBAction func ShowForgotPassword(sender: AnyObject) {

        ForgotPasswordView.hidden = false

    }
    
    @IBAction func onDismissForgotPassword(sender: AnyObject) {
        
        ForgotPasswordView.hidden = true
        
    }
    
    
    @IBAction func onEmailField(sender: AnyObject) {
        
        self.PasswordField.becomeFirstResponder()
        
    }

    @IBAction func onPasswordField(sender: AnyObject) {

        view.endEditing(true)

        performSegueWithIdentifier("signInSegue", sender: self)

    }
    @IBAction func onPasswordChanged(sender: AnyObject) {
    
        SignInButton.hidden = false
        
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
