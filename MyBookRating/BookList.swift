//
//  BookList.swift
//  MyBookRating
//
//  Created by MAC on 05/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SwiftUI

struct BookList: View {
    var books : [Book] = [Book(), Book(), Book()]
    var body: some View {
        List(books) { b in
            Text(b.title)
        }
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
    }
}
