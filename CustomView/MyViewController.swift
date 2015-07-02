//
//  MyViewController.swift
//  CustomView
//
//  Created by 阿部慎太郎 on 7/2/15.
//  Copyright © 2015 dictav. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bundle = NSBundle.mainBundle()
        let nib = UINib(nibName: "MyCustomView", bundle: bundle)
        if let customView = nib.instantiateWithOwner(self, options: nil).first as? UIView {
            imageView.image = UIImage(named: "star")
            titleLabel.text = "this is test"
            self.view.addSubview(customView)
        }
 

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func close() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
