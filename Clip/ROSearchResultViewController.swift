//
//  ROSearchResultViewController.swift
//  Clip
//
//  Created by Robert Yu on 2/4/21.
//

import UIKit
import Cupcake

class ROSearchResultViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()

        // Do any additional setup after loading the view.
    }
    
    func setUpViews() {
        let tabBgView = View.pin(.h(60))
        let resultBgView = View
        VStack(
            tabBgView,
            resultBgView
        ).gap(5).embedIn(self.view)
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
