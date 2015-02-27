//
//  Youdao.swift
//  podsample
//
//  Created by cfly on 15/2/27.
//  Copyright (c) 2015年 cfly. All rights reserved.
//

import Foundation
import CoreData

class Youdao: NSManagedObject {

    @NSManaged var basic: AnyObject
    @NSManaged var errorCode: Int32
    @NSManaged var query: String
    @NSManaged var translation: String
    @NSManaged var web: AnyObject
    @NSManaged var relationshipBasic: NSManagedObject
    @NSManaged var relationshipWeb: YoudaoWeb

}
