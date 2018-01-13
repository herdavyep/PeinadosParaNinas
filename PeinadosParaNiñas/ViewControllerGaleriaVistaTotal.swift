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
    
    
    @IBOutlet var botonYoutube: UIButton!
    @IBOutlet var botonMagenta: UIButton!
    @IBOutlet var botonVerde: UIButton!
    @IBOutlet var peinadosImageView: UIImageView!
    
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
           
            miPeinado = Peinado(nombre:"TRENZA PEGADA Y COLETA EN TORNILLOS",url:"https://youtu.be/5BEhUNjJchI",categoria:1, image:#imageLiteral(resourceName: "1_TRENZA_PEGADA_Y_COLETA_EN_TORNILLOS"))
            mySalon.append(miPeinado)
            
            miPeinado=Peinado(nombre: "TRENZAS DE LADO Y COLETAS", url: "https://youtu.be/FRgSeEqGmvk", categoria: 1, image: #imageLiteral(resourceName: "2_TRENZAS_DE_LADO_Y_COLETAS"))
            mySalon.append(miPeinado)
           
            miPeinado = Peinado(nombre: "ELEGANTE CON TRENZAS Y CHONGO", url: "https://youtu.be/pOA3RGZi1_g", categoria:1 , image:#imageLiteral(resourceName: "3_ELEGANTE_CON_TRENZAS_Y_CHONGO") )
            mySalon.append(miPeinado)
            miPeinado = Peinado(nombre: "LIGAS Y SHAKIRAS", url: "https://youtu.be/J-0e4-WsUM8", categoria:1 , image: #imageLiteral(resourceName: "4_LIGAS_Y_SHAKIRAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZAS PARA LAS FIESTAS PATRIAS DE MEXICO", url: "https://youtu.be/GLcfyWL_40o", categoria:1 , image:#imageLiteral(resourceName: "5_TRENZAS_PARA_LAS_FIESTAS_PATRIAS_DE_MÉXICO") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "LIGAS, TRENZAS Y COLETICAS", url: "https://youtu.be/FSXNSBMICB8", categoria:1 , image:#imageLiteral(resourceName: "6_LIGAS,_TRENZAS_Y_COLETICAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "LIGAS Y TRENZAS", url: "https://youtu.be/SSzdeDdPSj0", categoria:1 , image:#imageLiteral(resourceName: "7_LIGAS_Y_TRENZAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZAS CRUZADAS DE 4 CABOS CON LIST”N", url: "https://youtu.be/eIG_Hf4VcRA", categoria:1 , image:#imageLiteral(resourceName: "8_TRENZAS_CRUZADAS_DE_4_CABOS_CON_LISTÓN") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "LIGAS ARCOIRIS Y TRENZAS PEGADAS", url: "https://youtu.be/UGkOmdMkqvs", categoria:1 , image:#imageLiteral(resourceName: "9_LIGAS_ARCOIRIS_Y_TRENZAS_PEGADAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "CORONA CON CHONGO", url: "https://youtu.be/CKhyBTr75Kk", categoria:1 , image:#imageLiteral(resourceName: "10_CORONA_CON_CHONGO") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZAS DE LADO Y COLETAS", url: "https://youtu.be/1hj8y5OR7fk", categoria:1 , image:#imageLiteral(resourceName: "11_TRENZAS_DE_LADO_Y_COLETAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "PEINADO ARCOIRIS CON TRENZAS", url: "https://youtu.be/2N_yyY-V9lQ", categoria:1 , image:#imageLiteral(resourceName: "12_PEINADO_ARCOIRIS_CON_TRENZAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "CORAZON CON MOÑO", url: "https://youtu.be/STeBWEGD25M", categoria:1 , image: #imageLiteral(resourceName: "13_CORAZON_CON_MOÑO"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "LIGAS Y TRENZAS PEGADAS", url: "https://youtu.be/ty_5Spwny3s", categoria: 1, image:#imageLiteral(resourceName: "14_LIGAS_Y_TRENZAS_PEGADAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZAS EN ZIGZAG Y COLETAS", url: "https://youtu.be/SBtvk5sAtqw", categoria:1 , image:#imageLiteral(resourceName: "15_TRENZAS_EN_ZIGZAG_Y_COLETAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZAS HONLANDESAS CON LIGAS", url: "https://youtu.be/Kph4A4lfjGM", categoria:1 , image:#imageLiteral(resourceName: "16_TRENZAS_HONLANDESAS_CON_LIGAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZA 3D CON LIGAS", url: "https://youtu.be/MAHR9zEZP2M", categoria:1 , image:#imageLiteral(resourceName: "17_TRENZA_3D_CON_LIGAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZA ESTILO MOHAWK O MOHICANO", url: "https://youtu.be/YwIraeIdEqA", categoria:1 , image:#imageLiteral(resourceName: "18_TRENZA_ESTILO_MOHAWK_O_MOHICANO") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZA Y LIGAS", url: "https://youtu.be/R3CEJo4eZo8", categoria:1 , image:#imageLiteral(resourceName: "19_TRENZA_Y_LIGAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "ELEGANTE, RAPIDO Y FACIL", url: "https://youtu.be/hNdBCoRyfAc", categoria:1 , image:#imageLiteral(resourceName: "20_ELEGANTE,_RAPIDO_Y_FACIL") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "COLETAS Y TRENZAS", url: "https://youtu.be/CLT8UQGTG2Y", categoria:1 , image:#imageLiteral(resourceName: "21_COLETAS_Y_TRENZAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZA PULL THROUGH CON MICROTRENZAS MOHAWK", url: "https://youtu.be/LESbn-krcus", categoria:1 , image:#imageLiteral(resourceName: "22_TRENZA_PULL_THROUGH_CON_MICROTRENZAS_MOHAWK") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "PEINADO FACIL Y RAPIDO 2 EN 1", url: "https://youtu.be/6m5v_hMVebY", categoria:1 , image:#imageLiteral(resourceName: "23_PEINADO_FACIL_Y_RAPIDO_2_EN_1") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZAS CON MOÑO", url: "https://youtu.be/DVz9eH8BVIs", categoria:1 , image:#imageLiteral(resourceName: "24_TRENZAS_CON_MOÑO") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "PEINADO CON LIGAS", url: "https://youtu.be/3EncL1B54Dc", categoria:1 , image:#imageLiteral(resourceName: "25_PEINADO_CON_LIGAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZA GUSANO DE 4 CABOS", url: "https://youtu.be/nB8SLiIaHPg", categoria:1 , image:#imageLiteral(resourceName: "26_TRENZA_GUSANO_DE_4_CABOS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZA CORAZON Y COLETA", url: "https://youtu.be/m-VBpWU9MYI", categoria: 1, image:#imageLiteral(resourceName: "27_TRENZA_CORAZON_Y_COLETA") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZAS RAPIDAS Y FACILES", url: "https://youtu.be/CuDtPWf2oBs", categoria:1 , image:#imageLiteral(resourceName: "28_TRENZAS_RAPIDAS_Y_FACILES") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZA PULL THROUGH Y CHONGO ELEGANTE", url: "https://youtu.be/K5T8_5hw8Gk", categoria:1 , image:#imageLiteral(resourceName: "29_TRENZA_PULL_THROUGH_Y_CHONGO_ELEGANTE") )
            mySalon.append(miPeinado)
            
            
            break
            
        case 2:
           
            miPeinado = Peinado(nombre:"TRENZA FRANCESA CON LIGAS",url:"https://youtu.be/aB_7Og-sYCw",categoria:2, image:#imageLiteral(resourceName: "1_TRENZA_FRANCESA_CON_LIGAS"))
            mySalon.append(miPeinado)
           
            miPeinado = Peinado(nombre:"PEINADO CON LIGAS PARA NAVIDAD",url:"https://youtu.be/ZLGPC9t63d4",categoria:2, image:#imageLiteral(resourceName: "2_PEINADO_CON_LICAS_PARA_NAVIDAD"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"TRENZA PULL THROUGH CON LIGAS",url:"https://youtu.be/aW06etR_vJg",categoria:2, image:#imageLiteral(resourceName: "3_TRENZA_PULL_THROUGH_CON_LIGAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS Y TRENZA DE MEDIO LADO",url:"https://youtu.be/kSNP5SzCvAE",categoria:2, image:#imageLiteral(resourceName: "4_LIGAS_Y_TRENZA_DE_MEDIO_LADO"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS DE COLORES Y COLETA",url:"https://youtu.be/jG1E6OFvDbk",categoria:2, image:#imageLiteral(resourceName: "5_LIGAS_DE_COLORES_Y_COLETA"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"PEINADO CON LIGAS PARA LA ESCUELA",url:"https://youtu.be/jWVsx9YefKE",categoria:2, image:#imageLiteral(resourceName: "6_PEINADO_CON_LIGAS_PARA_LA_ESCUELA"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS, TRENZAS Y COLETICAS",url:"https://youtu.be/FSXNSBMICB8",categoria:2, image:#imageLiteral(resourceName: "7_LIGAS,_TRENZAS_Y_COLETICAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"DONA CON LIGAS EN TRIANGULOS",url:"https://youtu.be/xmot4q4Zs1Q",categoria:2, image:#imageLiteral(resourceName: "8_DONA_CON_LIGAS_EN_TRIANGULOS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS CRUZADAS Y TRENZA PEGADA",url:"https://youtu.be/MqPl_1KwEfQ",categoria:2, image:#imageLiteral(resourceName: "9_LIGAS_CRUZADAS_Y_TRENZA_PEGADA"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS MAYA Y TRENZA",url:"https://youtu.be/SSzdeDdPSj0",categoria:2, image:#imageLiteral(resourceName: "10_LIGAS_MAYA_Y_TRENZA"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS ARCOIRIS Y TRENZAS PEGADAS",url:"https://youtu.be/UGkOmdMkqvs",categoria:2, image:#imageLiteral(resourceName: "11_LIGAS_ARCOIRIS_Y_TRENZAS_PEGADAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS CRUZADAS LADO A LADO",url:"https://youtu.be/NxhMSiFTOX4",categoria:2, image:#imageLiteral(resourceName: "12_LIGAS_CRUZADAS_LADO_A_LADO"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"MAYA Y COLETAS",url:"https://youtu.be/CWJKLx9PFDA",categoria:2, image:#imageLiteral(resourceName: "13_MAYA_Y_COLETAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS Y TRENZA EN MEDIA LUNA",url:"https://youtu.be/49ITXkNb5qI",categoria:2, image:#imageLiteral(resourceName: "14_LIGAS_Y_TRENZA_EN_MEDIA_LUNA"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"MAYA CON COLETA",url:"https://youtu.be/GlF9JgkbiaU",categoria:2, image:#imageLiteral(resourceName: "15_MAYA_CON_COLETA"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"PEINADO FACIL Y RAPIDO DE LIGAS Y COLETA",url:"https://youtu.be/Hf8wVtWALPw",categoria:2, image:#imageLiteral(resourceName: "16_PEINADO_FACIL_Y_RAPIDO_DE_LIGAS_Y_COLETA"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS Y COLETAS",url:"https://youtu.be/aAUaYZaYsZU",categoria:2, image:#imageLiteral(resourceName: "17_LIGAS_Y_COLETAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"TRENZA CON COLETAS",url:"https://youtu.be/2N_yyY-V9lQ",categoria:2, image:#imageLiteral(resourceName: "18_TRENZA_CON_COLETAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS Y TRENZAS PEGADAS",url:"https://youtu.be/ty_5Spwny3s",categoria:2, image:#imageLiteral(resourceName: "19_LIGAS_Y_TRENZAS_PEGADAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"COLETA DOBLE Y TRENZA CON LIGAS",url:"https://youtu.be/WO5iVj9clGA",categoria:2, image:#imageLiteral(resourceName: "20_COLETA_DOBLE_Y_TRENZA_CON_LIGAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"TRENZA PULL THROUGH CON LIGAS Y COLETITAS",url:"https://youtu.be/p-lzOfXkQS8",categoria:2, image:#imageLiteral(resourceName: "21_TRENZA_PULL_THROUGH_CON_LIGAS_Y_COLETITAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS MAYA",url:"https://youtu.be/gInUNEASSFU",categoria:2, image:#imageLiteral(resourceName: "22_LIGAS_MAYA"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS CRUZADAS",url:"https://youtu.be/990fCaZr2i8",categoria:2, image:#imageLiteral(resourceName: "23_LIGAS_CRUZADAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"TRENZAS HOLANDESAS CON LIGAS",url:"https://youtu.be/Kph4A4lfjGM",categoria:2, image:#imageLiteral(resourceName: "24_TRENZAS_HOLANDESAS_CON_LIGAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"TRENZAS PULL THROUGH CON LIGAS Y NUDOS",url:"https://youtu.be/amZOGvpcGG0",categoria:2, image:#imageLiteral(resourceName: "25_TRENZAS_PULL_THROUGH_CON_LIGAS_Y_NUDOS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS CON TRENZA Y COLETAS",url:"https://youtu.be/3EncL1B54Dc",categoria:2, image:#imageLiteral(resourceName: "26_LIGAS_CON_TRENZA_Y_COLETAS"))
            mySalon.append(miPeinado)
           
            miPeinado = Peinado(nombre:"LIGAS Y SHAKIRAS",url:"https://youtu.be/J-0e4-WsUM8",categoria:2, image:#imageLiteral(resourceName: "27_LIGAS_Y_SHAKIRAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"ARAÑA CON COLETAS PARA HALLOWEEN",url:"https://youtu.be/0IXFtMmxfiU",categoria:2, image:#imageLiteral(resourceName: "28_ARAÑA_CON_COLETAS_PARA_HALLOWEEN"))
            mySalon.append(miPeinado)
            
            break
            
        case 3:
            
            miPeinado = Peinado(nombre:"TRENZA FRANCESA CON LIGAS",url:"https://youtu.be/aB_7Og-sYCw",categoria:2, image:#imageLiteral(resourceName: "1_TRENZA_FRANCESA_CON_LIGAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"PEINADO CON LIGAS PARA NAVIDAD",url:"https://youtu.be/ZLGPC9t63d4",categoria:2, image:#imageLiteral(resourceName: "2_PEINADO_CON_LICAS_PARA_NAVIDAD"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"TRENZA PULL THROUGH CON LIGAS",url:"https://youtu.be/aW06etR_vJg",categoria:2, image:#imageLiteral(resourceName: "3_TRENZA_PULL_THROUGH_CON_LIGAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS Y TRENZA DE MEDIO LADO",url:"https://youtu.be/kSNP5SzCvAE",categoria:2, image:#imageLiteral(resourceName: "4_LIGAS_Y_TRENZA_DE_MEDIO_LADO"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS DE COLORES Y COLETA",url:"https://youtu.be/jG1E6OFvDbk",categoria:2, image:#imageLiteral(resourceName: "5_LIGAS_DE_COLORES_Y_COLETA"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"PEINADO CON LIGAS PARA LA ESCUELA",url:"https://youtu.be/jWVsx9YefKE",categoria:2, image:#imageLiteral(resourceName: "6_PEINADO_CON_LIGAS_PARA_LA_ESCUELA"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS, TRENZAS Y COLETICAS",url:"https://youtu.be/FSXNSBMICB8",categoria:2, image:#imageLiteral(resourceName: "7_LIGAS,_TRENZAS_Y_COLETICAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"DONA CON LIGAS EN TRIANGULOS",url:"https://youtu.be/xmot4q4Zs1Q",categoria:2, image:#imageLiteral(resourceName: "8_DONA_CON_LIGAS_EN_TRIANGULOS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS CRUZADAS Y TRENZA PEGADA",url:"https://youtu.be/MqPl_1KwEfQ",categoria:2, image:#imageLiteral(resourceName: "9_LIGAS_CRUZADAS_Y_TRENZA_PEGADA"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS MAYA Y TRENZA",url:"https://youtu.be/SSzdeDdPSj0",categoria:2, image:#imageLiteral(resourceName: "10_LIGAS_MAYA_Y_TRENZA"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS ARCOIRIS Y TRENZAS PEGADAS",url:"https://youtu.be/UGkOmdMkqvs",categoria:2, image:#imageLiteral(resourceName: "11_LIGAS_ARCOIRIS_Y_TRENZAS_PEGADAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS CRUZADAS LADO A LADO",url:"https://youtu.be/NxhMSiFTOX4",categoria:2, image:#imageLiteral(resourceName: "12_LIGAS_CRUZADAS_LADO_A_LADO"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"TRENZA PEGADA Y COLETA EN TORNILLOS",url:"https://youtu.be/5BEhUNjJchI",categoria:1, image:#imageLiteral(resourceName: "1_TRENZA_PEGADA_Y_COLETA_EN_TORNILLOS"))
            mySalon.append(miPeinado)
            
            miPeinado=Peinado(nombre: "TRENZAS DE LADO Y COLETAS", url: "https://youtu.be/FRgSeEqGmvk", categoria: 1, image: #imageLiteral(resourceName: "2_TRENZAS_DE_LADO_Y_COLETAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "ELEGANTE CON TRENZAS Y CHONGO", url: "https://youtu.be/pOA3RGZi1_g", categoria:1 , image:#imageLiteral(resourceName: "3_ELEGANTE_CON_TRENZAS_Y_CHONGO") )
            mySalon.append(miPeinado)
           
            miPeinado = Peinado(nombre: "LIGAS Y SHAKIRAS", url: "https://youtu.be/J-0e4-WsUM8", categoria:1 , image: #imageLiteral(resourceName: "4_LIGAS_Y_SHAKIRAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZAS PARA LAS FIESTAS PATRIAS DE MEXICO", url: "https://youtu.be/GLcfyWL_40o", categoria:1 , image:#imageLiteral(resourceName: "5_TRENZAS_PARA_LAS_FIESTAS_PATRIAS_DE_MÉXICO") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "LIGAS, TRENZAS Y COLETICAS", url: "https://youtu.be/FSXNSBMICB8", categoria:1 , image:#imageLiteral(resourceName: "6_LIGAS,_TRENZAS_Y_COLETICAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "LIGAS Y TRENZAS", url: "https://youtu.be/SSzdeDdPSj0", categoria:1 , image:#imageLiteral(resourceName: "7_LIGAS_Y_TRENZAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZAS CRUZADAS DE 4 CABOS CON LIST”N", url: "https://youtu.be/eIG_Hf4VcRA", categoria:1 , image:#imageLiteral(resourceName: "8_TRENZAS_CRUZADAS_DE_4_CABOS_CON_LISTÓN") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZA PULL THROUGH CON MICROTRENZAS MOHAWK", url: "https://youtu.be/LESbn-krcus", categoria:1 , image:#imageLiteral(resourceName: "22_TRENZA_PULL_THROUGH_CON_MICROTRENZAS_MOHAWK") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "PEINADO FACIL Y RAPIDO 2 EN 1", url: "https://youtu.be/6m5v_hMVebY", categoria:1 , image:#imageLiteral(resourceName: "23_PEINADO_FACIL_Y_RAPIDO_2_EN_1") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZAS CON MOÑO", url: "https://youtu.be/DVz9eH8BVIs", categoria:1 , image:#imageLiteral(resourceName: "24_TRENZAS_CON_MOÑO") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "PEINADO CON LIGAS", url: "https://youtu.be/3EncL1B54Dc", categoria:1 , image:#imageLiteral(resourceName: "25_PEINADO_CON_LIGAS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZA GUSANO DE 4 CABOS", url: "https://youtu.be/nB8SLiIaHPg", categoria:1 , image:#imageLiteral(resourceName: "26_TRENZA_GUSANO_DE_4_CABOS") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZA CORAZON Y COLETA", url: "https://youtu.be/m-VBpWU9MYI", categoria: 1, image:#imageLiteral(resourceName: "27_TRENZA_CORAZON_Y_COLETA") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZAS RAPIDAS Y FACILES", url: "https://youtu.be/CuDtPWf2oBs", categoria:1 , image:#imageLiteral(resourceName: "28_TRENZAS_RAPIDAS_Y_FACILES") )
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre: "TRENZA PULL THROUGH Y CHONGO ELEGANTE", url: "https://youtu.be/K5T8_5hw8Gk", categoria:1 , image:#imageLiteral(resourceName: "29_TRENZA_PULL_THROUGH_Y_CHONGO_ELEGANTE") )
            mySalon.append(miPeinado)
           
            miPeinado = Peinado(nombre:"LIGAS MAYA",url:"https://youtu.be/gInUNEASSFU",categoria:2, image:#imageLiteral(resourceName: "22_LIGAS_MAYA"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS CRUZADAS",url:"https://youtu.be/990fCaZr2i8",categoria:2, image:#imageLiteral(resourceName: "23_LIGAS_CRUZADAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"TRENZAS HOLANDESAS CON LIGAS",url:"https://youtu.be/Kph4A4lfjGM",categoria:2, image:#imageLiteral(resourceName: "24_TRENZAS_HOLANDESAS_CON_LIGAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"TRENZAS PULL THROUGH CON LIGAS Y NUDOS",url:"https://youtu.be/amZOGvpcGG0",categoria:2, image:#imageLiteral(resourceName: "25_TRENZAS_PULL_THROUGH_CON_LIGAS_Y_NUDOS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS CON TRENZA Y COLETAS",url:"https://youtu.be/3EncL1B54Dc",categoria:2, image:#imageLiteral(resourceName: "26_LIGAS_CON_TRENZA_Y_COLETAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"LIGAS Y SHAKIRAS",url:"https://youtu.be/J-0e4-WsUM8",categoria:2, image:#imageLiteral(resourceName: "27_LIGAS_Y_SHAKIRAS"))
            mySalon.append(miPeinado)
            
            miPeinado = Peinado(nombre:"ARAÑA CON COLETAS PARA HALLOWEEN",url:"https://youtu.be/0IXFtMmxfiU",categoria:2, image:#imageLiteral(resourceName: "28_ARAÑA_CON_COLETAS_PARA_HALLOWEEN"))
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

            self.title = self.miPeinado.nombre
            
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
        
         botonVerde.setImage(#imageLiteral(resourceName: "BotonAdelantenPresionado"), for: UIControlState.highlighted)
        
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
        
        botonMagenta.setImage(#imageLiteral(resourceName: "BotonAtrasPresionado"), for: UIControlState.highlighted)
        
        presentarPublicidad()

        actualizarVista()

    }
    
    
    @IBAction func tutorialPeinado(_ sender: UIButton) {
        
        botonYoutube.setImage(#imageLiteral(resourceName: "BotonYoutubePresionado"), for: UIControlState.highlighted)
       
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
     
     
     
     
     cate 1
     
     
     cate 2
     
     
     
     
     
    */
    
    
    


}
