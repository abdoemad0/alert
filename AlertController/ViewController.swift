//
//  ViewController.swift
//  AlertController
//
//  Created by abdo emad  on 08/08/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func bunAlartView(_ sender: Any) {
        showAlartView()
    }
    
    @IBAction func bunActionSheet(_ sender: Any) {
        showActionSheet()
    }
    
    func showAlartView(){
        
        let alert = UIAlertController(title: "title", message: "my alert message", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Get the namee ", style: .default, handler: {action in  let txtname  = alert.textFields![0]
            print( "my name is \(txtname.text!)")}))
        alert.addTextField{(txtnmae) in txtnmae.placeholder = "name"}

        alert.addAction(UIAlertAction(title: "cansel", style: .destructive, handler: nil ))
        present(alert, animated: true , completion: nil)

    }
    func showActionSheet(){
        let alert = UIAlertController(title: "title", message: "my alert message", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Do", style: .default, handler:{action in print( "Do that")}))
        alert.addAction(UIAlertAction(title: "Do not", style: .destructive, handler: {action in print( "Don't do that")}))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true , completion: nil)
    }
   
    
}
struct Abdo{
    let good : String
    let notgood : String
    
}
