//
//  Family.swift
//  RealmSample
//
//  Created by tatsuya on 2015/11/18.
//  Copyright © 2015年 MIYAMOTO TATSUYA. All rights reserved.
//

import Foundation
import RealmSwift

class Family: Object {
    dynamic var name = ""
    let persons = List<Person>()

// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
