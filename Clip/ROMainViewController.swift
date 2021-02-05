//
//  ROMainViewController.swift
//  Clip
//
//  Created by Robert Yu on 2/1/21.
//

import UIKit
import Cupcake

class ROMainViewController: UIViewController {

    private var titleBgView: UIView?
    private var bottomBgView: UIView?;
    private var searchBgView: UIView?;
    private var bodyBgView: UIView?;
    
    private var titleLabel: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "yes"
        self.view.backgroundColor = UIColor.white;
        
        self.setUpViews();
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
    }
    
    func setUpViews(){
        
        let statusBarHeight = UIApplication.shared.statusBarFrame.height;
        
        self.titleBgView = View.pin(.h(60))
        self.searchBgView = View.pin(.h(70))
        self.bodyBgView = View
        self.bottomBgView = View.pin(.h(60))
        
        VStack(statusBarHeight, titleBgView, searchBgView, bodyBgView, bottomBgView).embedIn(self.view)

        let iconInTitleHeight = (self.titleBgView?.frame.height)! -  10 * 2
        ImageView.addTo(self.titleBgView!).img("头像").pin(.xywh(10, 10, iconInTitleHeight, iconInTitleHeight))
        ImageView.addTo(self.titleBgView!).img("更多").pin(.xywh(self.view.frame.width - 10 - iconInTitleHeight, 10, iconInTitleHeight, iconInTitleHeight))
        self.titleLabel = Label.addTo(self.titleBgView!).pin(.wh(200, iconInTitleHeight)).pin(.center).str("默认标题").align(.center)
        self.titleLabel?.sizeToFit()
        //self.titleLabel?.pin(.center)
        
        let searchBar = UISearchBar().embedIn(self.searchBgView!, 5,10,5,10)

        //let searchTextField = TextField.addTo(self.view).str("search!").pin(.center).pin(200,100);
        
        let searchResultVC = ROSearchResultViewController()
        self.addChild(searchResultVC)
        searchResultVC.view.addTo(self.bodyBgView!)
        
        setUpBottom()
    }
    
    func setUpBottom(){
        let iconW : CGFloat = 30.0

        HStack(40, ImageView.img("文件夹").pin(.wh(iconW,iconW)),"<-->",
               ImageView.img("搜索").pin(.wh(iconW,iconW)),"<-->",
               ImageView.img("设置").pin(.wh(iconW,iconW)),40
        ).embedIn(self.bottomBgView!).gap(20).align(.center)
            //ImageView.img("文件夹").pin(.wh(iconW,iconW))
 //       ).embedIn(self.bottomBgView!);
    }


}

