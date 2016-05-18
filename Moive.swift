//
//  Moive.swift
//  FavesMoives
//
//  Created by MiciH on 5/18/16.
//  Copyright © 2016 MichaelH. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Moive: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    func setMoiveImage(img: UIImage){
        //covert image to data
        let data = UIImagePNGRepresentation(img)
        self.image = data
        
    }
    
    func getMoiveImage() -> UIImage{
        //get the image data
        let img = UIImage(data: self.image!)!
        return img
    }

}
