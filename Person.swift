//
//  mainte.swift
//  
//
//  Created by tatsuya on 2015/11/15.
//
//

import Foundation
import RealmSwift

class Person : Object {
    
    dynamic var firstName = ""
    dynamic var lastName = ""
    dynamic var age = 0
    dynamic var birthDay = NSDate(timeIntervalSince1970: 0)
    
    var family : Family{
        return linkingObjects(Family.self, forProperty: "persons").first!
    }
}