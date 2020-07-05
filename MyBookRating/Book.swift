//
//  Book.swift
//  MyBookRating
//
//  Created by MAC on 05/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SwiftUI
import Combine

struct Book: Identifiable {
    //stub
    var id: UUID = UUID()
    
    var title: String = "Sapiens"
    var rating: Double = 3.0
    var read: Bool = false
    
}

class BookStore: ObservableObject {
    let didChange = PassthroughSubject<Void, Never> ()
    
    var books : [Book] {
        didSet{
            didChange.send()
        }
    }
    init() {
        var book1 = Book()
        book1.title = "Sapiens"
        book1.rating = 4.0
        book1.read = true
        
        var book2 = Book()
        book2.title = "Homo deus"
        book2.rating = 3.0
        book2.read = true
        
        var book3 = Book()
        book3.title = "21 Lecciones para el siglo XXI"
        book3.rating = 2.5
        book3.read = false
        
        books = [book1, book2, book3]
    }
    
    func addBook(book: Book) {
        books.append(book)
    }
}
