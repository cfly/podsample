//
//  DataViewController.swift
//  podsample
//
//  Created by cfly on 15/2/22.
//  Copyright (c) 2015年 cfly. All rights reserved.
//

import UIKit
//import SwiftyJSON

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: AnyObject?


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let obj: AnyObject = dataObject {
            self.dataLabel!.text = obj.description
        } else {
            self.dataLabel!.text = ""
        }
    }

    @IBAction func onChangeValue(sender: AnyObject) {
    }

    @IBAction func onClick(sender: AnyObject) {
        youdao()
    }
    func youdao(){
        let manager = AFHTTPRequestOperationManager()
        var q="word"

        var url = "http://fanyi.youdao.com/openapi.do?keyfrom=lowbeebdc&key=612340493&type=data&doctype=json&version=1.1&q=" + q

        println(url)
        let params = [];//["keyfrom": "lowbeebdc", "key": "612340493", "doctype":"json","version":"1.1", "q":q]
        println(params)
        
        manager.GET(url,
            parameters: params,
            success: { (operation: AFHTTPRequestOperation!,
                responseObject: AnyObject!) in
                println("JSON: " + responseObject.description!)
                //let json = JSONValue(responseObject)
                //self.dataLabel!.text = NSJSONSerialization.dataWithJSONObject(responseObject, nil, nil)

            },
            failure: { (operation: AFHTTPRequestOperation!,
                error: NSError!) in
                println("Error: " + error.localizedDescription)
        })

    }
    func testAFN(){
        let manager = AFHTTPRequestOperationManager()
        let url = "http://api.openweathermap.org/data/2.5/weather"
        println(url)
        
        let params = ["lat": 39.26, "lon": 41.03, "cnt":0]
        println(params)
        
        manager.GET(url,
            parameters: params,
            success: { (operation: AFHTTPRequestOperation!,
                responseObject: AnyObject!) in
                println("JSON: " + responseObject.description!)
            },
            failure: { (operation: AFHTTPRequestOperation!,
                error: NSError!) in
                println("Error: " + error.localizedDescription)
        })

    }
}

