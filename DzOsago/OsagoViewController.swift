//
//  OsagoViewController.swift
//  DzOsago
//
//  Created by Polina on 03.03.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import UIKit

class OsagoViewController: UIViewController {
    
    var osagoModel: OsagoModel = OsagoModel()
    
    @IBOutlet var sliderAgeOutlet: UISlider!
    
    @IBOutlet var coifficAgeLabel: UILabel!
    
    @IBOutlet var sliderEngineOutlet: UISlider!
    
    @IBOutlet var coifficEngineLabel: UILabel!
    
    
    @IBOutlet var engineLabel: UILabel!
    
    @IBOutlet var ageLabel: UILabel!
    
    @IBOutlet var yearsSwitcherOutlet: UISwitch!
    
    @IBOutlet var yearsSwitcherLabel: UILabel!
    
    
    @IBOutlet var priceLabel: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yearsSwitcherOutlet.setOn(true, animated: true)
        
        
        
    }
    
    
    @IBAction func sliderAgePressed(_ sender: UISlider) {
        
        //        var osagoModel2 = OsagoModel(age: Int(), stage: <#T##Int#>, dvigatel: <#T##Int#>)
        
        sliderAgeOutlet.minimumValue = 18.0
        sliderAgeOutlet.maximumValue = 120
        let resultAge = Int(sliderAgeOutlet.value)
        osagoModel.age = resultAge
        let coinffAge = osagoModel.coefficientAge()
        
        coifficAgeLabel.text = String(coinffAge)
        ageLabel.text = String("Age: \(resultAge)")
        
    }
    
    @IBAction func sliderEnginePressed(_ sender: UISlider) {
        sliderEngineOutlet.minimumValue = 49.0
        sliderEngineOutlet.maximumValue = 300.0
        let resultEngine = Int(sliderEngineOutlet.value)
        osagoModel.dvigatel = resultEngine
        let coifengine = osagoModel.coefficientDvegatel()
        
        
        coifficEngineLabel.text = String(coifengine)
        engineLabel.text = String("Engine: \(resultEngine)")
        
    }
    
    @IBAction func switcherSwitcPressed(_ sender: UISwitch) {
        if yearsSwitcherOutlet.isOn {
            osagoModel.stage = true
            yearsSwitcherLabel.text = "more than 3 years"
        } else {
            yearsSwitcherLabel.text = "less than 3 years"
            osagoModel.stage = false
        }
    }
    
    
    @IBAction func converButtonPressed(_ sender: UIButton) {
        
        priceLabel.text = "Price: \(osagoModel.price()) "
    }
    
    
    
    
}
