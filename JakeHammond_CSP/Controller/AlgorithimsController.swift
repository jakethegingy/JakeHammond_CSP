//
//  AlgorithimsController.swift
//  JakeHammond_CSP
//
//  Created by Hammond, Jacob on 11/8/17.
//  Copyright © 2017 Hammond, Jacob. All rights reserved.
//

import UIKit

class AlgorithimsController: UIViewController
{
    @IBOutlet weak var algorithmText: UILabel!
    
    //Today I learned how to make arrays in swift. I learned that you do [type] = [] to say the type and then initialize it. 
    
    private func setupAlgorithms() -> Void
    {
        var algorithmSteps : [String] = []
        
        // TODO: Define algorithm and all steps
        let algorithm :String = "These are the instructions to create a project in Java using Eclipse and Github    \n"
        let stepOne :String = "First, ...."
        let stepTwo :String = "Second, ...."
        let stepThree :String = ".... ..."
        
        // TODO: Finish adding all seps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = "🖤"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
