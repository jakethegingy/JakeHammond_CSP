//
//  InternetMasterController.swift
//  JakeHammond_CSP
//
//  Created by Hammond, Jacob on 11/29/17.
//  Copyright © 2017 Hammond, Jacob. All rights reserved.
//

import UIKit
import WebKit

public class InternetMasterViewontroller : UITableViewController
{
    private (set) lazy var internetTopics : [String] =
    {
        return [
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Swift Language Guide"
        ]
    }()
    
    private lazy var addresses : [String] = []
    
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
        //TODO: Replace with your correct links
        addresses = [
            "https://apstudent.collegeboard.org/apcourse/ap-computer-science-principles",
            "https://ctec.canyonsdistrict.org/",
            "http://www.canyonsdistrict.org/",
            "https://twitter.com/GingerlyAdvice",
            "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/index.html"
        ]
        
        if let splitView = splitViewController
        {
            let currentControllers = splitView.childViewControllers
            detailViewController = currentControllers[0] as?
                InternetDetailViewController
        }
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        //Uncomment the following line o preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
    }
    
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warningIncomplete implementation, return the number of selections
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
    let currentText = internetTopics[indexPath.row]
    cell.textLabel!.text = currentText
    
    return cell
    }
    
    //MARK: Handle the internal transfer
    override public func prepare(for segue: UIStoryboardSegue, sender:
        Any?)
    {
        if segue.identifier! == "showDetail"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let urlString = addresses[indexPath.row]
                let pageText : String
                
                if indexPath.row == 0
                {
                    //TODO: Replace with your definitions - great time to use the " " " opperator
                    pageText = "All the definitions you wrote........."
                }
                else
                {
                    pageText = internetTopics[indexPath.row]
                }
                
                let controller = segue.destination as!
                    InternetDetailViewController
                
                controller.detailAddress = urlString
                controller.detailText = pageText
                controller.navigationItem.leftBarButtonItem =
                    splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
}
