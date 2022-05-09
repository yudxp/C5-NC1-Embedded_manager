//
//  NewPartsViewController.swift
//  Nano_01
//
//  Created by Yudha Hamdi Arzi on 29/04/22.
//

import UIKit
import CoreData

class NewPartsViewController: UIViewController {

  @IBOutlet weak var partsText: UITextField!
  @IBOutlet weak var packageText: UITextField!
  @IBOutlet weak var valueText: UITextField!
  @IBOutlet weak var amountText: UITextField!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
  @IBAction func saveButton(_ sender: UIButton) {
    // Create alert
    let alert = UIAlertController(title: "Great", message: "New Part Added", preferredStyle: .alert)
    
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
      print("tap ok")
      //let newParts = Component(context: self.contex)
      
    }))
    
    present(alert, animated: true)
    partsText.text = ""
    packageText.text = ""
    valueText.text = ""
    amountText.text = ""
  }
  
  func showAlert() {
    let alert = UIAlertController(title: "Great", message: "New Part Added", preferredStyle: .alert)
    
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
      print("tap ok")
    }))
    
    present(alert, animated: true)
    
  }

  
}
