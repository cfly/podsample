//
//  YoudaoWeb.swift
//  podsample
//
//  Created by cfly on 15/2/27.
//  Copyright (c) 2015年 cfly. All rights reserved.
//

import Foundation
import CoreData

class YoudaoWeb: NSManagedObject {

    @NSManaged var key: String
    @NSManaged var value: String
    @NSManaged var relationshipWeb: NSManagedObject

}
