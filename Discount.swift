//
//  Discount.swift
//  couleurs
//
//  Created by Ignatius Ian on 9/26/15.
//  Copyright © 2015 Ignatius Ian. All rights reserved.
//

import Foundation

class Discount{
    var name: String
    var desc: String
    var terms: String
    var origPrice: String
    var discPrice: String
    
    init(myName: String, myDesc: String, myTerms: String, myOrigPrice: String, myDiscPrice: String){
        self.name = myName
        self.desc = myDesc
        self.terms = myTerms
        self.origPrice = myOrigPrice
        self.discPrice = myDiscPrice
    }
    
    func getName()->String{
        return self.name
    }
    
    func getDesc()->String{
        return self.desc
    }
    
    func getTerms()->String{
        return self.terms
    }
    
    func getOPrice()->String{
        return self.origPrice
    }
    
    func getDPrice()->String{
        return self.discPrice
        
    }
}
