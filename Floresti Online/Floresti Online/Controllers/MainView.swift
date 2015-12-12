//
//  ViewController.swift
//  Floresti Online
//
//  Created by Iura Gutu on 11/12/15.
//  Copyright © 2015 deCode. All rights reserved.
//

import UIKit
//import LiquidFloatingActionButton
//import TLYShyNavBarManager

class MainView: UIViewController, LiquidFloatingActionButtonDataSource, LiquidFloatingActionButtonDelegate {
    
    @IBOutlet var imageViewBG: UIImageView!
    @IBOutlet var scrollView: UIScrollView!

    var cells: [LiquidFloatingCell] = []
    var floatingActionButton: LiquidFloatingActionButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        self.view.backgroundColor = UIColor(red: 55 / 255.0, green: 55 / 255.0, blue: 55 / 255.0, alpha: 1.0)
        // Do any additional setup after loading the view, typically from a nib.
        
        self.shyNavBarManager.scrollView = self.scrollView;
        navigationController!.navigationBar.barTintColor = UIColor(red: CGFloat(210/255.0), green: CGFloat(69/255.0), blue: CGFloat(92/255.0), alpha: CGFloat(1.0));
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        
        navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        imageViewBG.layer.cornerRadius = 4;
        
        
        let createButton: (CGRect, LiquidFloatingActionButtonAnimateStyle) -> LiquidFloatingActionButton = { (frame, style) in
            let floatingActionButton = LiquidFloatingActionButton(frame: frame)
            floatingActionButton.animateStyle = style
            floatingActionButton.dataSource = self
            floatingActionButton.delegate = self
            
            
            return floatingActionButton
        }
        
        let cellFactory: (String) -> LiquidFloatingCell = { (iconName) in
            return LiquidFloatingCell(icon: UIImage(named: iconName)!)
        }
        cells.append(cellFactory("ic_cloud"))
        cells.append(cellFactory("ic_system"))
        cells.append(cellFactory("ic_place"))
        
        let floatingFrame = CGRect(x: self.view.frame.width - 56 - 16, y: self.view.frame.height - 56 - 16, width: 56, height: 56)
        let bottomRightButton = createButton(floatingFrame, .Up)
        
     
        self.view.addSubview(bottomRightButton)
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func numberOfCells(liquidFloatingActionButton: LiquidFloatingActionButton) -> Int {
        return cells.count
    }
    
    func cellForIndex(index: Int) -> LiquidFloatingCell {
        return cells[index]
    }
    
    func liquidFloatingActionButton(liquidFloatingActionButton: LiquidFloatingActionButton, didSelectItemAtIndex index: Int) {
        liquidFloatingActionButton.close()
    }
}

