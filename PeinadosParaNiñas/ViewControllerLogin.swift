//
//  ViewControllerLogin.swift
//  Peinados Para Niñas
//
//  Created by Heriberto David Yepes on 26/12/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//

import UIKit
import Firebase

class ViewControllerLogin: UIViewController {
    
    @IBOutlet var correo: UITextField!

    @IBOutlet var clave: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    
    @IBAction func registro(_ sender: UIButton) {
        Auth.auth().createUser (withEmail: correo.text!, password: clave.text!, completion: {
            user, error in
            
            if error != nil {
                print("")
            } else {
                print ("Usuario creado")
                
            }
            
        })
        
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
