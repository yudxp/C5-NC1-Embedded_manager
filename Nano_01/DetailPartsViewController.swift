//
//  DetailPartsViewController.swift
//  Nano_01
//
//  Created by Yudha Hamdi Arzi on 29/04/22.
//

import UIKit

class DetailPartsViewController: UIViewController {
  
  var sparpart = ["0805 - 200", "2024 = 100K", "0604 - 330"]
  
  @IBOutlet weak var partList: UITableView!

  
    override func viewDidLoad() {
        super.viewDidLoad()
        partList.dataSource = self
        partList.delegate = self
    }
    

}

extension DetailPartsViewController: UITableViewDelegate, UITableViewDataSource{
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    sparpart.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = partList.dequeueReusableCell(withIdentifier: "partCell", for: indexPath)
    cell.textLabel?.text = sparpart[indexPath.row]
    cell.detailTextLabel?.text = "2"
    return cell
  }
  
  
}
