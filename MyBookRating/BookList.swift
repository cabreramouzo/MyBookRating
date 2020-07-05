//
//  BookList.swift
//  MyBookRating
//
//  Created by MAC on 05/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SwiftUI

struct BookList: View {
    @State var showBookDetailView = false
    
    @ObservedObject var bookStore = BookStore()

    
    var body: some View {
        NavigationView {
                List {
                    //recorremos los libros
                    ForEach(bookStore.books){ b in
                        NavigationLink(b.title, destination: ContentView(book: b, bookStore: self.bookStore))
                    }
                    
                }
                .navigationBarTitle("Mis Libros")
                .navigationBarItems(trailing:
                    Button(action: {
                        self.showBookDetailView.toggle()
                    }) {
                        Image(systemName: "plus")
                            .font(Font.system(.title))
                    }
            )
            
            
        }.sheet(isPresented: $showBookDetailView) {
            ContentView(book: Book(), bookStore: self.bookStore)
        }
        
    }
        
    
    
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
    }
}
