//
//  ViewController.swift
//  TabBarApp
//
//  Created by Chris Archibald on 10/12/15.
//  Copyright © 2015 Chris Archibald. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func showTabBarPressed(sender: AnyObject) {
        

        let orangeViewController = storyboard?.instantiateViewControllerWithIdentifier("OrangeViewController") as! OrangeViewController
        
        let blueViewController = storyboard?.instantiateViewControllerWithIdentifier("BlueViewController") as! BlueViewController
        
        // Tab Bar Items
        
        let orangeTabBarItem = UITabBarItem(title: "Orange", image: UIImage(named: "animal-element-7"), selectedImage: nil)
        let blueTabBarItem = UITabBarItem(title: "blue", image: UIImage(named: "battery-7"), selectedImage: nil)
        
        orangeViewController.tabBarItem = orangeTabBarItem
        blueViewController.tabBarItem = blueTabBarItem
        
        let tabBarViewControllers = [orangeViewController, blueViewController]
        
        let tabBarViewController = UITabBarController()
        tabBarViewController.viewControllers = tabBarViewControllers
        
        presentViewController(tabBarViewController, animated: true, completion: nil)

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
