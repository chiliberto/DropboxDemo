//
//  TermsViewController.swift
//  DropboxDemo
//
//  Created by Gilbert Guerrero on 9/16/15.
//  Copyright © 2015 Gilbert Guerrero. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onBackButton(sender: AnyObject) {

        //navigationController!.popViewControllerAnimated(true)
        
        self.dismissViewControllerAnimated(true, completion: {})

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
