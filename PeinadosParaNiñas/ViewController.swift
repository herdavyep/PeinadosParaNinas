//
//  ViewController.swift
//  PeinadosParaNiñas
//
//  Created by Heriberto David Yepes on 22/12/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//
/*
import UIKit
import Firebase
import FirebaseDatabase
import SDWebImage

class ViewController: UIViewController {
   // @IBOutlet var nombrePeinado: UILabel!
    @IBOutlet var imagenPeinado: UIImageView!
    
    @IBOutlet var titulo: UINavigationItem!
    
    var mySalon: [Peinado]=[]
    var miPeinado : Peinado!
    var tutorialUrl:String!
    
    var peinadoID : Int = 0
    var dbReferencia:DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       /* miPeinado = Peinado(nombre:"Trenza pull through con ligas",url:"https://www.youtube.com/watch?v=aW06etR_vJg&list=PLaksGd2ZsbMViAXiAGNzlrGBRZLQZ4jly", image:#imageLiteral(resourceName: "trenza pull through con ligas"))
        mySalon.append(miPeinado)
        miPeinado = Peinado(nombre:"cruz",url:"https://translate.google.com/#en/es/%2FUsers%2Fheriberto%2FDocuments%2FPeinadosParaNin%CC%83as%2FPeinadosParaNin%CC%83as%2FViewController.swift%3A29%3A28%3A%20Incorrect%20argument%20label%20in%20call%20(have%20'nombre%3Acolor%3Aimagen%3A'%2C%20expected%20'nombre%3Acolor%3Aimage%3A')%0Aany%0A%0Acould%20not%20insert%20new%20outlet", image:#imageLiteral(resourceName: "pn3"))
        mySalon.append(miPeinado)
        miPeinado = Peinado(nombre:"Trenza de medio lado",url:"https://www.udemy.com/swift-3-ios-10/learn/v4/t/lecture/5467070?start=0", image:#imageLiteral(resourceName: "trensas de medio lado"))
        mySalon.append(miPeinado)
        miPeinado = Peinado(nombre:"desconectado",url:"https://developer.apple.com/documentation/", image:#imageLiteral(resourceName: "pn4"))
        mySalon.append(miPeinado)
        
        */
       /* dbReferencia=Database.database().reference().child("peinados")
        dbReferencia.observe(DataEventType.value, with: {(snapshot) in
            var nuevoPeinado:[Peinados]=[]
            for peinadosSnapshot in snapshot.children{
                let peinadoObjeto = Peinados(snapshot:peinadosSnapshot as! DataSnapshot)
                nuevoPeinado.append(peinadoObjeto)
            }
            self.mySalon = nuevoPeinado
            
            })*/
       
        
        peinadoID = 0

        
        
        actualizarVista()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func actualizarVista() {
        
            miPeinado = mySalon [peinadoID]

        
            UIView.animate(withDuration: 0.5, delay: 0.25, options: [.curveLinear,.allowUserInteraction], animations: {
            
            if self.miPeinado.image != nil{
                self.imagenPeinado.image = self.miPeinado.image
            }else{
                self.imagenPeinado.image = nil
            }
            
            /*self.nombrePeinado.text = "\(self.miPeinado.nombre)"*/
            self.tutorialUrl = self.miPeinado.url!
            self.titulo.title = self.miPeinado.nombre

            
            //self.view.backgroundColor = self.miPeinado.color
            
        }) { (completar) in
            print("gracias")
        }
        
        
    }

    @IBAction func cambiarPeinado(_ sender: Any) {
        
        peinadoID += 1
        
        if peinadoID >= mySalon.count{
            
            peinadoID = 0
        }
        
        actualizarVista()
    }
    
    
    
    
    @IBAction func irTutorial(_ sender: UIButton) {
        
        if let websiteURL = URL(string: self.tutorialUrl ) {
            let app = UIApplication.shared
            if app.canOpenURL(websiteURL){
                app.open(websiteURL, options: [:], completionHandler: nil)
            }
        }
    }
    
}





*/







