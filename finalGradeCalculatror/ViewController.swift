//
//  ViewController.swift
//  finalGradeCalculatror
//
//  Created by Kimberly Herrera on 10/12/21.
//

import UIKit

class ViewController: UIViewController
{
    //declare variables
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var textField3: UITextField!
    
    @IBOutlet weak var resultLable: UILabel!

    override func viewDidLoad()
    
    
    
    
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateButton(_ sender: Any)
    {
        var x = textField1.text ?? "0"
        var y = textField2.text ?? "0"
        var z = textField3.text ?? "0"
        var a = Float(x) ?? 0.0
        var b = Float(y) ?? 0.0
        var c = Float(z) ?? 0.0
        //A=C
        //B=D
        //C=W
        var result = (b-a*(1-c/100))/(c/100)
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
        textField3.resignFirstResponder()
        self.resultLable.text="\(result)%"
    
    }
    @IBAction func clearButton(_ sender: Any)
    {
        textField1.text = ""
        textField2.text = ""
        textField3.text = ""
        resultLable.text = "No Result Yet"
        
    }

}

