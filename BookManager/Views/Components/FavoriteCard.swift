//
//  FavoriteCard.swift
//  BookManager
//
//  Created by Wilbert Baker on 1/17/26.
//

import SwiftUI

struct FavoriteCard: View {
    let book: Book
    
    var body: some View {
        Text(book.title)
    }
}
