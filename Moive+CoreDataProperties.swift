//
//  Moive+CoreDataProperties.swift
//  FavesMoives
//
//  Created by MiciH on 5/18/16.
//  Copyright © 2016 MichaelH. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Moive {

    @NSManaged var image: NSData?
    @NSManaged var title: String?
    @NSManaged var desc: String?

}
