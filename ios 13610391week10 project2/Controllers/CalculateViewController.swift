//
//  ViewController.swift
//  ios 13610394 week10 project2
//
//  Created by Worawiboon on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    //Global Variable คือ ตัวแปรตรงกลางที่ใช้ร่วมกันได้ใน Class
    var bmiValueCal = "0.0"
    var CalculatorBrain = CalculateBrain()
    //เรียกใช้ struct #1 ประกาศตัวแปรชนิด struct
    @IBOutlet weak var sliderHeight: UISlider!
    
    @IBOutlet weak var sliderWeight: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    
    @IBOutlet weak var weightLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightSliderChanged(_ sender: UISlider) {
       
        
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) M."
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(sender.value)
        
        print(String(format: "%.2f", sender.value))
        print(String(format: "%.0f", sender.value))
        
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight) Kg."
        
    }
    
    
    @IBAction func calculatePressed(_ sender: Any) {
//
//        w = heightLabel.text
//        
//        let bmi = weightLabel / pow(heightLabel, 2)
        
        let heightFromUser = sliderHeight.value
        let weightFromUser = sliderWeight.value
        //Local Variable
        //let bmi = weight / (height*height)
        //print(bmi)
        
       // bmiValueCal = String(format: "%.1f", weight / (height*height))
        
        //เรียกใช้ struct #2 ประกาศตัวแปรชนิด struct โดยส่งค่าออกไป
        CalculatorBrain.CalculateBMI(height:heightFromUser, weight:weightFromUser)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
        
    }
    
    @IBAction func heartPressed(_ sender: UIButton) {
             self.performSegue(withIdentifier: "goToCredit", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
           // destinationVC.bmiValue =  bmiValueCal
        // ชื่อ Object.ชื่อของตัวแปร = ค่าที่ต้องการ set ให้
            //เรียกใช้ struct #3 เรียกใช้ function getBMIFromUser ส่งกลับมาแบบ struct 
            destinationVC.bmiValue = CalculatorBrain.getBMIValue()

        }//end if
        if segue.identifier == "goToCredit"{
            let CreditVC = segue.destination as! CreditViewController
            CreditVC.fullname = "Nattawoot Khaosawang"
        }
        
    }//end function prepare
    
}//end class

