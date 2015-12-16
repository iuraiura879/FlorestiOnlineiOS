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

class MainView: UIViewController, LiquidFloatingActionButtonDataSource, LiquidFloatingActionButtonDelegate, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var imageViewBG: UIImageView!
    @IBOutlet var scrollView: UIScrollView!

    @IBOutlet var redRoundDot: UIImageView!
    @IBOutlet var turquaRoundDot: UIImageView!
    @IBOutlet var grayRoundDot: UIImageView!
    @IBOutlet var greenRoundDot: UIImageView!
    
    
    @IBOutlet var but1: UIButton!
    @IBOutlet var but2: UIButton!
    @IBOutlet var but3: UIButton!
    @IBOutlet var but4: UIButton!
    @IBOutlet var but5: UIButton!
    @IBOutlet var but6: UIButton!
    
    
    ///
    
    @IBOutlet var mixedTV: UITableView!
    @IBOutlet var sponsorTV: UITableView!
    
    
    
    ///
    
    var cells: [LiquidFloatingCell] = []
    var floatingActionButton: LiquidFloatingActionButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let shyManager = TLYShyNavBarManager();
        shyManager.expansionResistance = 4000;
        self.shyNavBarManager = shyManager;
        
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
//        cells.append(cellFactory("ic_cloud"))
//        cells.append(cellFactory("ic_system"))
        cells.append(cellFactory("ic_place"))
        
        let floatingFrame = CGRect(x: self.view.frame.width - 56 - 16, y: self.view.frame.height - 56 - 16, width: 56, height: 56)
        let bottomRightButton = createButton(floatingFrame, .Up)
        
     
        self.view.addSubview(bottomRightButton)
 
        
        
        
        
        
        redRoundDot.layer.cornerRadius = 5.5;
        turquaRoundDot.layer.cornerRadius = 5.5;
        grayRoundDot.layer.cornerRadius = 5.5;
        greenRoundDot.layer.cornerRadius = 5.5;
        
        but1.layer.cornerRadius=4;
        but2.layer.cornerRadius=4;
        but3.layer.cornerRadius=4;
        but4.layer.cornerRadius=4;
        but5.layer.cornerRadius=4;
        but6.layer.cornerRadius=4;
        
        
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    ///////
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(tableView == mixedTV){
            return 0;
        }
        else{
            return 0;
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        if(tableView == mixedTV){
            return UITableViewCell()
        }
        else{
            return UITableViewCell()
        }
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if(tableView == mixedTV){
           
        }
        else{
            
        }
        
        
    }

    
}

