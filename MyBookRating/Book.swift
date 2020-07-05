//
//  Book.swift
//  MyBookRating
//
//  Created by MAC on 05/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SwiftUI

struct Book: Identifiable {
    //stub
    var id: UUID = UUID()
    
    var title: String = "Sapiens"
    var rating: Double = 3.0
    var read: Bool = false
    
}
