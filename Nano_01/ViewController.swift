//
//  ViewController.swift
//  Nano_01
//
//  Created by Yudha Hamdi Arzi on 25/04/22.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var table: UITableView!
  
  struct Component {
    let title : String
    let imageName : String
  }
  
  let data: [Component] = [
    Component(title: "MicroController", imageName: "arduino"),
    Component(title: "Capacitor", imageName: "capacitor"),
    Component(title: "Resistor", imageName: "resistor"),
    Component(title: "Inductor", imageName: "inductor"),
    Component(title: "Transistor", imageName: "transistor"),
    Component(title: "Battery", imageName: "battery"),
    Component(title: "Fuse", imageName: "fuse"),
    Component(title: "Module", imageName: "module"),
    Component(title: "Connector", imageName: "connector"),
    Component(title: "Cable", imageName: "cable"),
    Component(title: "Led", imageName: "led"),
  ]
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    table.dataSource = self
    table.delegate = self
    // Do any additional setup after loading the view.
  }


}

extension ViewController : UITableViewDataSource,UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let component = data[indexPath.row]
    let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
    cell.label.text = component.title
    cell.iconImageView.image = UIImage(named: component.imageName)
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 200
  }
}

