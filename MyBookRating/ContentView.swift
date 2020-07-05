//
//  ContentView.swift
//  MyBookRating
//
//  Created by MAC on 05/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //Vinculos (bindings) a variables locales
    @State var book: Book
 
    var body: some View {

        List() {
            Section {
                VStack(alignment: .leading) {
                    TitleDetail(title: "Título")
                    TextField("Finanzas para frikis", text: $book.title)
                    
                }
            }
            Section {
                VStack(alignment: .leading) {
                    TitleDetail(title: "Valoración")
                    HStack() {
                        Spacer()
                        Text(String(repeating: "⭐️", count: Int(book.rating)))
                        Spacer()
                    }
                    Slider(value: $book.rating, in: 1.0...5.0, step: 1.0)
                    
                }
                
            }
            Section {
                Toggle(isOn: $book.read) {
                    Text("Lo he leído")
                }
                .accentColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
            }
            
            Section {
                Button(action:{}) {
                    HStack {
                        Spacer()
                        TitleDetail(title: "Guardar")
                        Spacer()
                    }
                }
            }
           
        }.listStyle(GroupedListStyle())


        
        

        
    }
    
    func sayHello() {
        print("Me han pulsado")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(book: Book())
    }
}

struct TitleDetail: View {
    //parametros de entrada
    var title: String
    
    var body: some View {
        
        return Text(title).font(.subheadline).foregroundColor(.gray)
    }
}
