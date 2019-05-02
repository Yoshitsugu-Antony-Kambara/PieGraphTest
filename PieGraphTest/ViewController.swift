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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Do any additional setup after loading the view, typically from a nib.
        var params = [Dictionary<String,AnyObject>]()
        params.append(["value":7 as AnyObject,"color":UIColor.red])
        params.append(["value":5 as AnyObject,"color":UIColor.blue])
        params.append(["value":8 as AnyObject,"color":UIColor.green])
        params.append(["value":10 as AnyObject,"color":UIColor.yellow])
        
        graphView = PieGraphView(frame: CGRect(x : 0, y : 30, width : 320, height : 320), params: params)
        //graphView = PieGraphView(frame: CGRectMake(0, 30, 320, 320), params: params)
        self.view.addSubview(graphView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func start(sender: AnyObject) {
        graphView.startAnimating()
        
    }
    
}

