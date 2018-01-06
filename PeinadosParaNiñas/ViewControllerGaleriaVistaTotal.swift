//
//  ViewControllerGaleriaVistaTotal.swift
//  Peinados Para Niñas
//
//  Created by Heriberto David Yepes on 29/12/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewControllerGaleriaVistaTotal: UIViewController {
    
    @IBOutlet var peinadosImageView: UIImageView!
    
    @IBOutlet var titulo: UINavigationItem!
    var mySalon: [Peinado]=[]
    var miPeinado : Peinado!
    var miPeinadoCategoriaId : CategoriasPeinados!
    var peinadoID : Int = 0
    var tutorialUrl:String!
    var iniciadorPublicidad = true
    
    var bannerView: GADBannerView!
    var interstitial: GADInterstitial!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch miPeinadoCategoriaId.IdCategoria {
        case 1:
           
            miPeinado = Peinado(nombre:"Trenza de medio lado",url:"https://www.udemy.com/swift-3-ios-10/learn/v4/t/lecture/5467070?start=0",categoria:1, image:#imageLiteral(resourceName: "trensas de medio lado"))
            mySalon.append(miPeinado)
            
            break
            
        case 2:
           
            miPeinado = Peinado(nombre:"desconectado",url:"https://developer.apple.com/documentation/",categoria:2, image:#imageLiteral(resourceName: "pn4"))
            mySalon.append(miPeinado)
            break
            
        case 3:
            miPeinado = Peinado(nombre:"Trenza pull through con ligas",url:"https://www.youtube.com/watch?v=aW06etR_vJg&list=PLaksGd2ZsbMViAXiAGNzlrGBRZLQZ4jly",categoria:3, image:#imageLiteral(resourceName: "trenza pull through con ligas"))
            mySalon.append(miPeinado)
            miPeinado = Peinado(nombre:"cruz",url:"https://translate.google.com/#en/es/%2FUsers%2Fheriberto%2FDocuments%2FPeinadosParaNin%CC%83as%2FPeinadosParaNin%CC%83as%2FViewController.swift%3A29%3A28%3A%20Incorrect%20argument%20label%20in%20call%20(have%20'nombre%3Acolor%3Aimagen%3A'%2C%20expected%20'nombre%3Acolor%3Aimage%3A')%0Aany%0A%0Acould%20not%20insert%20new%20outlet",categoria:3, image:#imageLiteral(resourceName: "pn3"))
            mySalon.append(miPeinado)
           
            break
            
        default:
            break
        }
        
       
        
        /*miPeinado = Peinado(nombre:"",color:,url:"", image:))
        mySalon.append(miPeinado)*/
        
        
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        
        addBannerViewToView(bannerView)
        
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        /*interstitial = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        let request = GADRequest()
        interstitial.load(request)*/
        interstitial = createAndLoadInterstitial()
        
        peinadoID = 0
        
        actualizarVista()

    }
    
    func createAndLoadInterstitial() -> GADInterstitial {
        let interstitial = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        interstitial.delegate = self as? GADInterstitialDelegate
        interstitial.load(GADRequest())
        return interstitial
    }
    
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
        interstitial = createAndLoadInterstitial()
    }
    func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
            [NSLayoutConstraint(item: bannerView,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: bottomLayoutGuide,
                                attribute: .top,
                                multiplier: 1,
                                constant: 0),
             NSLayoutConstraint(item: bannerView,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0)
            ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func actualizarVista() {
        
        miPeinado = mySalon [peinadoID]
        
        
        UIView.animate(withDuration: 0.5, delay: 0.25, options: [.curveLinear,.allowUserInteraction], animations: {
            
            if self.miPeinado.image != nil{
                self.peinadosImageView.image = self.miPeinado.image
            }else{
                self.peinadosImageView.image = nil
            }
            
            /*self.nombrePeinado.text = "\(self.miPeinado.nombre)"*/
            self.tutorialUrl = self.miPeinado.url!
            self.titulo.title = self.miPeinado.nombre
            
            
            //self.view.backgroundColor = self.miPeinado.color
            
            
        }) { (completar) in
            print("gracias")
        }
        
        
    }
    

    @IBAction func siguienteImage(_ sender: UIButton) {
        
        peinadoID += 1
        
        if peinadoID >= mySalon.count{
            
            peinadoID = 0
        }
        
        presentarPublicidad()
        
        actualizarVista()
        
        
    }
    
   /* func esPar(numero:Int) -> Bool {
        var par = numero % 2
    }
    */
    func presentarPublicidad(){
        
        if interstitial.isReady {
            interstitial.present(fromRootViewController: self)
        } else {
            print("Ad wasn't ready")
        }
    }
    
    @IBAction func cambiarPeinadoIzq(_ sender: UIButton) {
        
        peinadoID -= 1
        
        if peinadoID <= -1 {
            
            peinadoID = mySalon.count-1
        }
        
        presentarPublicidad()

        actualizarVista()

    }
    
    
    @IBAction func tutorialPeinado(_ sender: UIButton) {
        
       
        if let websiteURL = URL(string: self.tutorialUrl ) {
            let app = UIApplication.shared
            if app.canOpenURL(websiteURL){
                app.open(websiteURL, options: [:], completionHandler: nil)
            }
        }
        
    }
    

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.identifier == "VerProductos" {
     
     
     if let indexPath = self.tableView.indexPathForSelectedRow{
     
     let recetaSeleccionada2 = self.categorias[indexPath.row]
     
     let destinationViewController2 = segue.destination as! ProductosViewController
     
     destinationViewController2.categoria = recetaSeleccionada2
     
     
     }
     
     let recetaSeleccionada = almacen //self.almacenes[indexPath.row]
     
     let destinationViewController = segue.destination as! ProductosViewController
     
     destinationViewController.almacenId = recetaSeleccionada
     
     }
    }
    */

}
