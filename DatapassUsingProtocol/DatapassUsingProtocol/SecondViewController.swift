//
//  SecondViewController.swift
//  DatapassUsingProtocol
//
//  Created by HT-Mac-06 on 3/18/24.
//

import UIKit
protocol DataSendingDelegate
{
    func SendingDataToFirsViewController(mydata: String)
}

class SecondViewController: UIViewController {
    
    //delegate variable
    var swiftdelegate: DataSendingDelegate? = nil
    @IBOutlet weak var enterTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    @IBAction func sendDataBttn(_ sender: Any) {
        
        if self.swiftdelegate != nil && self.enterTextfield.text != nil {
            
            let dataToBeSent = self.enterTextfield.text
            self.swiftdelegate?.SendingDataToFirsViewController(mydata: dataToBeSent!)
            navigationController?.popViewController(animated: true)
        }
        
    }
    
}
