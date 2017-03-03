//
//  OsagoModel.swift
//  DzOsago
//
//  Created by Polina on 03.03.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import Foundation

struct OsagoModel {
    var age: Int
    var stage: Bool
    
    var dvigatel: Int
    
    func price() -> Double {
        var result = 5.0 * coefficientAge() * coefficientDvegatel()
        
        return result
    }
    
    func coefficientAge() -> Double {
        var coeffic: Double = 0.0
        if age <= 22 && stage == false {
                       coeffic = 1.8
                   }
        
        if age < 22 && stage == true {
                        coeffic = 1.6
                    }
        if age > 22 && stage == false {
                        coeffic = 1.7
                    }
        if age > 22 && stage == true {
                        coeffic = 1.0
                    }
        return coeffic
    }
    
//    func coefficientAge() -> Double {
//        var coeffic: Double = 0.0
//        
//        if age <= 22 && stage <= 3 {
//            coeffic = 1.8
//        }
//        
//        if age < 22 && stage > 3 {
//            coeffic = 1.6
//        }
//        
//        if age > 22 && stage <= 3 {
//            coeffic = 1.7
//        }
//        
//        if age > 22 && stage > 3 {
//            coeffic = 1.0
//        }
//        return coeffic
//    }

    func coefficientDvegatel() -> Double {
        var coeffic: Double = 0.0
        if dvigatel <= 50 {
            coeffic = 0.6
        }
        if dvigatel >= 51 && dvigatel <= 70 {
            coeffic = 1.0
        }
        
        if dvigatel >= 71 && dvigatel <= 100 {
            coeffic = 1.1
        }
        
        if dvigatel >= 101 && dvigatel <= 120 {
            coeffic = 1.2
        }
        
        if dvigatel >= 121 && dvigatel <= 150 {
            coeffic = 1.4
        }
        if dvigatel > 151 {
            coeffic = 1.6
        }
        return coeffic
    }
    
//    init(age: Int , stage: Int, dvigatel: Int ) {
//        self.age = age
//        self.stage = stage
//        self.dvigatel = dvigatel
//    }
//    convenience init(age: Int, stage: Int, dvigatel: nil ) {
//    self.age = age
//        self.stage = stage
//    }
    
    
    
}
















