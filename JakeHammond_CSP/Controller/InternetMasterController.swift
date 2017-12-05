//
//  InternetMasterController.swift
//  JakeHammond_CSP
//
//  Created by Hammond, Jacob on 11/29/17.
//  Copyright © 2017 Hammond, Jacob. All rights reserved.
//

import UIKit

public class InternetMasterViewontroller : UITableViewController
{
    private (set) lazy var internetTopics : [String] =
    {
        return [
            "Deinitions",
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
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com"
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
    
    override public func numberOfSelection(in tableView: UITableView) -> Int
    {
        // #warningIncomplete implementation, return the number of selections
        return 1
    }
    
    override public func tableView( tableView: UITableView, numberOfRowsInSelection section: Int) -> Int
    {
        return internetTopics.count
    }
    
    override public func tableView( tableView: UITableView, cellForRowAt indexPath: indexPath) -> UITableViewCell
    {
    let cell = talbeView.dequeueReusableCel(withIdentifier: "reuseIdentifier", for: indexPath)
    let currentText = internetTopics[indexPath.row]
    cell.textLable!.text = currentText
    
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
                controller.detailView = pageText
                controller.navigationItem.leftBarBttonItem =
                    splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
}
