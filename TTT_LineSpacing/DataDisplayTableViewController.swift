//
//  DataDisplayTableViewController.swift
//  TTT_LineSpacing
//
//  Created by Kavisha on 09/04/20.
//  Copyright © 2020 Kavisha. All rights reserved.
//

import UIKit

class DataDisplayTableViewController: UITableViewController {
    
    let text = ["Earth orbits around the Sun in 365.256 solar days, a period known as an Earth sidereal year. During this time, Earth rotates about its axis 366.256 times, that is, a sidereal year has 366.256 sidereal days.[n 6]",
                "Earth orbits around the Sun in 365.256 solar days, a period known as an Earth sidereal year. During this time, Earth rotates about its axis 366.256 times, that is, a sidereal year has 366.256 sidereal days.[n 6]"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
       
       
       override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return text.count
       }
       
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        
        let data = text[indexPath.row]
        
        if indexPath.row == 0 {
            cell.textLabel?.text = data
        } else {
            cell.textLabel?.attributedText = convertToNSAttributeParagraphStyle(data)
        }
        return cell
        
    }
    
    func convertToNSAttributeParagraphStyle(_ contents: String) -> NSMutableAttributedString{
        let attr = NSMutableAttributedString(string: contents)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 5
        attr.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attr.length))
        return attr
    }

    
    
}


