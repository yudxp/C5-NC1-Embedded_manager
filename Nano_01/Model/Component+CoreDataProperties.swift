//
//  Component+CoreDataProperties.swift
//  Nano_01
//
//  Created by Yudha Hamdi Arzi on 09/05/22.
//
//

import Foundation
import CoreData


extension Component {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Component> {
        return NSFetchRequest<Component>(entityName: "Component")
    }

    @NSManaged public var quantity: Int64
    @NSManaged public var type: String?
    @NSManaged public var package: String?
    @NSManaged public var value: String?
    @NSManaged public var price: Int64

}

extension Component : Identifiable {

}
