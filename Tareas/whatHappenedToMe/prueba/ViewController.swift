//
//  ViewController.swift
//  prueba
//
//  Created by markmota on 2/24/18.
//  Copyright © 2018 markmota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // se elimino un texfield y el boton que se agregaron de mas, luego deje comentado la funcion de agregar texto a el textfield y el de cambiarle el nombre ya que no me queria correr bien y de ahi uni de nuevo el boton con el viewcontroller y le di accion al boton ya que si no le daba la acccion y usaba la funcion de accion de el boton no queria trabajar por eso le meti al boton accion y ya pudo trabajar mejor el programa.
    
    
   
    
    
    @IBOutlet var outtletText: UITextField!
    
    @IBAction func aoutletButton(_ sender: Any) {
        outtletText.text = "You are a genius "
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //aoutletButton.setTitle("Touch me!", for: .normal)
        
    }
    //func actionButton(_ sender: Any) {
    //outtletText.text = "You are a genius "
    //}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

