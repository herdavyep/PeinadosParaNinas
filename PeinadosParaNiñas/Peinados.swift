//
//  Peinados.swift
//  Peinados Para Niñas
//
//  Created by Heriberto David Yepes on 26/12/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//

import Foundation
import FirebaseDatabase

class Peinados {
    let key:String!
    let url:String!
    
    let itemRef:DatabaseReference?
    
    init(url:String, key:String){
        self.key=key
        self.url=url
        self.itemRef=nil
    }
    
    init(snapshot:DataSnapshot) {
        key=snapshot.key
        itemRef=snapshot.ref
        
        let snapshotValue = snapshot.value as? NSDictionary
        if let imageUrl = snapshotValue?["urlImagen"] as? String{
            
            url = imageUrl
        }else{
            url = ""
        }
    }
    
}


