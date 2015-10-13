//
//  BlueViewController.swift
//  TabBarApp
//
//  Created by Chris Archibald on 10/12/15.
//  Copyright © 2015 Chris Archibald. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {
    
    var text: String?

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Blue.didLoad")
        if let text = text {
            label.text = text
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        print("Blue.Will appear")
        super.viewWillAppear(animated)
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
