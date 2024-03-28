//
//  ViewController.swift
//  DatapassUsingProtocol
//
//  Created by HT-Mac-06 on 3/18/24.
//

import UIKit

class FirtsViewController: UIViewController , DataSendingDelegate{
   
    
    @IBOutlet weak var recievedText: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   // Delegate Method/Function
    func SendingDataToFirsViewController(mydata: String) {
        self.recievedText.text = mydata
    }
    
    
    

    @IBAction func getDataBttn(_ sender: Any) {
       
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let secondVC = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            navigationController?.pushViewController(secondVC, animated: true)
            
            //delegate
            secondVC.swiftdelegate = self
         
            }
    }
    
}

