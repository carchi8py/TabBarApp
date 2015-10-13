//
//  OrangeViewController.swift
//  TabBarApp
//
//  Created by Chris Archibald on 10/12/15.
//  Copyright © 2015 Chris Archibald. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarController?.delegate = self
        
        // [0] will give you the first view controller
        if let blueViewController = tabBarController?.viewControllers?[1] as? BlueViewController {
            
            blueViewController.text = "Hi from orange"
        }
        
        print("Orange.didLoad")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        print("Orange.Will appear")
        super.viewWillAppear(animated)
    }
    
    // Tab bar delegate methods
    
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        print("should Select: \(viewController)")
        
        if let blueViewController = viewController as? BlueViewController {
            print("blue!")
        } else if let yellowViewController = viewController as? YellowViewController {
            print("Yellow")
        }
        return true
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
