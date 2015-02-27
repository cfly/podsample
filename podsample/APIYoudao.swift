//
//  APIYoudao.swift
//  podsample
//
//  Created by cfly on 15/2/27.
//  Copyright (c) 2015年 cfly. All rights reserved.
//

import Foundation


/*
{
    "errorCode":0
    "query":"good",
    "translation":["好"], // 有道翻译
    "basic":{ // 有道词典-基本词典
        "phonetic":"gʊd"
        "uk-phonetic":"gʊd" //英式发音
        "us-phonetic":"ɡʊd" //美式发音
        "explains":[
        "好处",
        "好的",
        "好"
        ]
    },
    "web":[ // 有道词典-网络释义
    {
    "key":"good",
    "value":["良好","善","美好"]
    },
    {...}
    ]
}
*/
class ModuleYoudao{
    var errorCode:Int = 0;
    var query:String = "";
    var translation:String = "";
    var basic:String = "";
    var web:String = "";
}
class FetchApi{
    
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
            let json = JSON(responseObject)
            //self.dataLabel!.text = NSJSONSerialization.dataWithJSONObject(responseObject, nil, nil)
            println(json)
            let translation = json["translation"][0]
            println(translation.string)
            
        },
        failure: { (operation: AFHTTPRequestOperation!,
            error: NSError!) in
            println("Error: " + error.localizedDescription)
    })
    
}