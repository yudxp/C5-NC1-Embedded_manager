//
//  ViewController.swift
//  Nano_01
//
//  Created by Yudha Hamdi Arzi on 25/04/22.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var table: UITableView!
  
//  let contex = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//
//  var parts:[Component]?
  
  struct Component {
    let title : String
    let imageName : String
    let stockValue : Int
  }

  let data: [Component] = [
    Component(title: "MicroController", imageName: "arduino", stockValue: 5),
    Component(title: "Capacitor", imageName: "capacitor", stockValue: 2),
    Component(title: "Resistor", imageName: "resistor", stockValue: 1),
    Component(title: "Inductor", imageName: "inductor", stockValue: 10),
    Component(title: "Transistor", imageName: "transistor", stockValue: 99),
    Component(title: "Battery", imageName: "battery", stockValue: 20),
    Component(title: "Fuse", imageName: "fuse", stockValue: 10),
    Component(title: "Module", imageName: "module", stockValue: 25),
    Component(title: "Connector", imageName: "connector", stockValue: 13),
    Component(title: "Cable", imageName: "cable", stockValue: 94),
    Component(title: "Led", imageName: "led", stockValue: 100),
  ]
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    table.dataSource = self
    table.delegate = self
    table.separatorStyle = UITableViewCell.SeparatorStyle.none
//    fetchItem()
  }

//  func fetchItem() {
//    do{
//      self.parts = try contex.fetch(Component.fetchRequest())
//
//      DispatchQueue.main.async {
//        self.table.reloadData()
//      }
//
//    }
//    catch{
//
//    }
//  }
  
  
  @IBAction func newParts(_ sender: Any) {
    
  }
  
}


extension ViewController : UITableViewDataSource,UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let indexnya = indexPath.row
    print(indexnya)
    tableView.cellForRow(at: indexPath)?.isSelected = false
    performSegue(withIdentifier: "detailPartsSegue", sender: self)
  }
  
//  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    return self.parts?.count ?? 0
//  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let part = data[indexPath.row]
    let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
    cell.label?.text = " \(part.title) : \(part.stockValue) PCS"
    cell.iconImageView?.image = UIImage(named: "\(part.imageName)")
    cell.iconImageView.layer.cornerRadius = 20
    cell.label.layer.masksToBounds = true
    cell.label.layer.cornerRadius = 5
    return cell
  }
  
//  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    let part = self.parts![indexPath.row]
//    let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
//    cell.label?.text = " \(String(describing: part.type)) : \(part.quantity) PCS"
//    cell.iconImageView?.image = UIImage(named: "\(String(describing: part.type))")
//    cell.iconImageView.layer.cornerRadius = 20
//    cell.label.layer.masksToBounds = true
//    cell.label.layer.cornerRadius = 5
//    return cell
//  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 200
  }
}

