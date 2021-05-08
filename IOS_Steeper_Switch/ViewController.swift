//
//  ViewController.swift
//  IOS_Steeper_Switch
//
//  Created by Parth Goswami on 08/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    var t_price:Int?
    var echeese_price:Int?
    var mcheese_price:Int?
    var total:Int?
    
    var p:Int?
    
    @IBOutlet weak var step: UIStepper!
    
    @IBOutlet weak var qty_lbl: UILabel!
    
    @IBOutlet weak var cheese_switch: UISwitch!
    
    @IBOutlet weak var mcheese_switch: UISwitch!
    
    @IBOutlet weak var qty_view: UIView!
    
    @IBOutlet weak var total_lbl: UILabel!
    
    @IBOutlet weak var confirm_btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        step_design()
        cheese_switch.isOn = false
        mcheese_switch.isOn = false
        
    }
    
    func step_design(){
        
        step.layer.cornerRadius = 8
        qty_view.layer.cornerRadius = 10
        confirm_btn.layer.cornerRadius = 15
        
    }
    
    @IBAction func qty_steeper(_ sender: Any) {
        
        let qty = Int(step.value).description
        qty_lbl.text = qty
        p = Int(qty)
        t_price = (399 * Int(qty)!)
        total = t_price
        Extra_Cheese_Btn((Any).self)
        Mozzarella_Cheese_btn((Any).self)
        total_lbl.text = "Total : \(total!)/-"
        
        
    }
    
    @IBAction func Extra_Cheese_Btn(_ sender: Any) {
        
        if cheese_switch.isOn {
            let updated_price = (p! * 45)
            total! += updated_price
            total_lbl.text = "Total : \(total!)/-"
        }else  if cheese_switch.isOn == false {
            let updated_price = (p! * 45)
            total! -= updated_price
            total_lbl.text = "Total : \(total!)/-"
        }
        
    }
    
    @IBAction func Mozzarella_Cheese_btn(_ sender: Any) {
        
        if mcheese_switch.isOn {
            let updated_price = (p! * 99)
            total! += updated_price
            total_lbl.text = "Total : \(total!)/-"
        }else  if mcheese_switch.isOn == false {
            let updated_price = (p! * 99)
            total! -= updated_price
            total_lbl.text = "Total : \(total!)/-"
            
        }
        
    }
    @IBAction func Order_btn(_ sender: Any) {
        
        
    }
    
    
}


