//
//  ContentView.swift
//  MyBookRating
//
//  Created by MAC on 05/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var title: String = ""
    @State var rating = 3.0
    @State var read: Bool = true
 
    var body: some View {

        List() {
            Section {
                VStack(alignment: .leading) {
                    TitleDetail(title: "Título")
                    TextField("Finanzas para frikis", text: $title)
                    
                }
            }
            Section {
                VStack(alignment: .leading) {
                    TitleDetail(title: "Valoración")
                    HStack() {
                        Spacer()
                        Text(String(repeating: "⭐️", count: Int(rating)))
                        Spacer()
                    }
                    Slider(value: $rating, in: 1...5, step: 1)
                    
                }
                
            }
            Section {
                Toggle(isOn: $read) {
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
        ContentView()
    }
}

struct TitleDetail: View {
    //parametros de entrada
    var title: String
    
    var body: some View {
        
        return Text(title).font(.subheadline).foregroundColor(.gray)
    }
}
