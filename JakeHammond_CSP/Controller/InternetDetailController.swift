//
//  InternetDetailController.swift
//  JakeHammond_CSP
//
//  Created by Hammond, Jacob on 11/29/17.
//  Copyright © 2017 Hammond, Jacob. All rights reserved.
//

import UIKit
import WebKit

class InternetDetailViewController : UIViewController
{
    //MARK: GUI Controls
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer WKWebView!
    
    var detailAdress : String?
    {
        //MARK: Update the detail view when a value is changed.
        didSet
        {
            configureDetailView()
        }
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        configureDetailView()
        
        //Do any additional setup after loading the view.
    }
    
    private func configureDetailView() -> Void
    {
            if detailAdress != nil
            {
                if let currentWebView = webViewer
                {
                    let centURL = URL(string: detailAdress!)
                    let curentWebRequest = URLRequest(url: currentURL!)
                    curentWebView.load(currentWebRequest)
                }
            }
            else
            {
                if let curentWebView = webViewer
                {
                    let currentURL = URL(string: "http://www.foxnews.com")
                    curentWebView.loa(URLRequest(url:currentURL!))
                }
            }
        
            if detailText != nil
            {
                if let curentText = textView
                {
                    curentText.text = detailText
                }
            }
            else
            {
               if let currentText = textView
                {
                    currentText.text = "Jakes real news screen"
                }
            }
    }
}
