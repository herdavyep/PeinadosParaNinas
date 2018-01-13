//
//  CategoriaTableViewController.swift
//  Peinados Para Niñas
//
//  Created by Heriberto David Yepes on 4/01/18.
//  Copyright © 2018 Heriberto David Yepes. All rights reserved.
//

import UIKit
import GoogleMobileAds

class CategoriaTableViewController: UITableViewController {
    
    
    
    var categorias:CategoriasPeinados!
    var FullCategorias:[CategoriasPeinados]=[]
    var bannerView: GADBannerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
         navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        categorias = CategoriasPeinados(nombre: "Peinados para niñas con trenzas", image:#imageLiteral(resourceName: "24_TRENZAS_HOLANDESAS_CON_LIGAS"), categoria: 1)
        FullCategorias.append(categorias)
        categorias = CategoriasPeinados(nombre:"Peinados para niñas con ligas" , image: #imageLiteral(resourceName: "3_TRENZA_PULL_THROUGH_CON_LIGAS"), categoria: 2)
        FullCategorias.append(categorias)
        categorias = CategoriasPeinados(nombre: "Peinados para niñas faciles y rapidos de hacer", image: #imageLiteral(resourceName: "26_TRENZA_GUSANO_DE_4_CABOS"), categoria: 3)
        FullCategorias.append(categorias)
        
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        
        addBannerViewToView(bannerView)
        
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        


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

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.FullCategorias.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let categoriaPeinado = FullCategorias[indexPath.row]
        let celdaId = "celdaDeCategorias"
        let cell = tableView.dequeueReusableCell(withIdentifier: celdaId, for: indexPath) as! CategoriasTableViewCell

        cell.ImagenCategoriaPeinado.image = categoriaPeinado.image
        cell.NombreCategoriaPeinado.text = categoriaPeinado.nombre
        
        cell.ImagenCategoriaPeinado.layer.cornerRadius = 79.0
        cell.ImagenCategoriaPeinado.clipsToBounds = true

        return cell
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "verPeinados" {
            
            if let indexPath = self.tableView.indexPathForSelectedRow{
                
                let categoriaSeleccionada = self.FullCategorias[indexPath.row]
                
                let destinationViewController = segue.destination as! ViewControllerGaleriaVistaTotal
                
                destinationViewController.miPeinadoCategoriaId = categoriaSeleccionada
                
                
            }
        }
    }
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
