//
//  DiscountManager.swift
//  couleurs
//
//  Created by Ignatius Ian on 9/26/15.
//  Copyright © 2015 Ignatius Ian. All rights reserved.
//

import Foundation
import Parse

class DiscountAPI: NSObject{
    var discounts = [Discount]()
    
    override init(){
        super.init()
        let query = PFQuery(className: "discounts")
        query.findObjectsInBackgroundWithBlock {
            (objects: [PFObject]?, error: NSError?) -> Void in
            if error == nil {
                // The find succeeded.
                //print("Successfully retrieved \(objects!.count) discounts.")
                // Do something with the found objects
                if let objects = objects as [PFObject]! {
                    for object in objects {
                        print("new disc loading")
                        let pName = String(object["name"])
                        let pDesc = String(object["desc"])
                        let pTerm = String(object["terms"])
                        let pOrigPrice = String(object["original"])
                        let pDiscPrice = String(object["discountp"])
                        let newDisc = Discount.init(myName: pName, myDesc: pDesc, myTerms: pTerm, myOrigPrice: pOrigPrice, myDiscPrice: pDiscPrice)
                        self.discounts.append(newDisc)
                        print(self.discounts.count)
                    }
                }
            } else {
                // Log details of the failure
                print("Error: \(error!) \(error!.userInfo)")
            }
        }
    }
    
    func printSize(){
        print(self.discounts.count)
    }
    
    func getArray()->[Discount]{
        return self.discounts
    }

}