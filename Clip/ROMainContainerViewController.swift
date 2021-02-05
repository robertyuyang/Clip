//
//  ROMainContainerViewController.swift
//  Clip
//
//  Created by Robert Yu on 2/2/21.
//

import UIKit

class ROMainContainerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews();
        
        // Do any additional setup after loading the view.
    }
    
    func setUpViews(){
        let mainVC = ROMainViewController();
        let sideVC = ROSideMenuViewController();
        self.addChild(mainVC);
        self.addChild(sideVC);
        
        self.view.addSubview(sideVC.view);
        self.view.addSubview(mainVC.view);
        
        mainVC.view.frame = self.view.frame;
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
