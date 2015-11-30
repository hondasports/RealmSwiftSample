//
//  ViewController.swift
//  RealmSample
//
//  Created by tatsuya on 2015/11/15.
//  Copyright © 2015年 MIYAMOTO TATSUYA. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let realm = try!Realm()

        try! realm.write(){
            realm.deleteAll()
        }

        print(realm.path)

        let newFamily = Family()
        newFamily.name = "hogehoge"

        
        do{
            try realm.write(){
                realm.add(newFamily)
            }
            
        } catch let error as NSError{
            print(error.localizedDescription)
        }
            
        let hoge = realm.objects(Family).filter("name='hogehoge'")
        if let aFamily = hoge.first{

            let person1 = Person()
            person1.firstName = "tatsuya"
            person1.lastName = "miyamoto"
            person1.age = 34
            person1.birthDay = NSDate(timeIntervalSince1970: 1)
            
            let person2 = Person()
            person2.firstName = "hanako"
            person2.lastName = "miyamoto"
            person2.age = 33
            person2.birthDay = NSDate(timeIntervalSince1970: 1)
            
            let person3 = Person()
            person3.firstName = "ziro"
            person3.lastName = "miyamoto"
            person3.age = 17
            person3.birthDay = NSDate(timeIntervalSince1970: 1)

            try! realm.write(){
                aFamily.persons.append(person1)
                aFamily.persons.append(person2)
                aFamily.persons.append(person3)
                
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

