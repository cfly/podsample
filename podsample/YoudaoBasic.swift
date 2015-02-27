//
//  YoudaoBasic.swift
//  podsample
//
//  Created by cfly on 15/2/27.
//  Copyright (c) 2015年 cfly. All rights reserved.
//

import Foundation
import CoreData

class YoudaoBasic: NSManagedObject {

    @NSManaged var explains: String
    @NSManaged var phonetic: String
    @NSManaged var uk_phonetic: String
    @NSManaged var us_phonetic: String
    @NSManaged var relationshipBasic: Youdao

}
