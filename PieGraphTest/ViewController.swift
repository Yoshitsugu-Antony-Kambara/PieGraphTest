//
//  ViewController.swift
//  PieGraphTest
//
//  Created by 神原良継 on 2019/05/02.
//  Copyright © 2019 YoshitsuguKambara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var graphView:PieGraphView!;
    var ore: Void!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Do any additional setup after loading the view, typically from a nib.
        var params = [Dictionary<String,AnyObject>]()
        params.append(["value":2 as AnyObject,"color":UIColor.red])
        params.append(["value":5 as AnyObject,"color":UIColor.blue])
        params.append(["value":8 as AnyObject,"color":UIColor.green])
        
        
        graphView = PieGraphView(frame: CGRect(x : 25, y : 200, width : 320, height : 320), params: params)
        //graphView = PieGraphView(frame: CGRectMake(0, 30, 320, 320), params: params)
        self.view.addSubview(graphView)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func start(_ sender: Any) {
        graphView.startAnimating()
    }
    
    /***
    @IBAction func start(sender: AnyObject) {
        graphView.startAnimating()
        
    }
    ***/
}

