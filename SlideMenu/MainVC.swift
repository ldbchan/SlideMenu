//
//  MainVC.swift
//  SlideMenu
//
//  Created by Chantil on 2014/8/1.
//
//

import UIKit

class MainVC : UIViewController {
    var sidebarIsOpen: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sidebarIsOpen = false
    }
    
    @IBAction func menuButtonClicked(_ sender : AnyObject) {
        
        let x = self.sidebarIsOpen! ? 0 : 274
        UIView.animate(withDuration: 0.2, animations: {
            self.view.frame = CGRect(x:x, y:0, width:320, height:568)
            }, completion: { _ in
                self.sidebarIsOpen = !(self.sidebarIsOpen!)
            })
    }
    
    @IBAction func swipeHappend(_ recognizer : UISwipeGestureRecognizer) {
        
        let x = (recognizer.direction == .left) ? 0 : 274
        UIView.animate(withDuration: 0.2, animations: {
            self.view.frame = CGRect(x:x, y:0, width:320, height:568)
            }, completion: { _ in
                self.sidebarIsOpen = (recognizer.direction == .left) ? false : true
            })
        
    }
}
