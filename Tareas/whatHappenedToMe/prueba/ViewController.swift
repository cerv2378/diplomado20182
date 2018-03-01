//
//  ViewController.swift
//  prueba
//
//  Created by markmota on 2/24/18.
//  Copyright © 2018 markmota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // se elimino los label y el boton que se agregaron de mas al mainstoryboar como tambien el label como  lo volvi a unir con view el botton se agregue accion
    
    @IBAction func aoutletButton(_ sender: UIButton) {
        
        outtletText.text = "You are a genius "
    }
    
    @IBOutlet var outtletText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //aoutletButton.setTitle("Touch me!", for: .normal)
        
    }

    // func actionButton(_ sender: Any) {
    //outtletText.text = "You are a genius "
    //}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

