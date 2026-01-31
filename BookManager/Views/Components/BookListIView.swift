//
//  BookListItem.swift
//  BookManager
//
//  Created by Wilbert Baker on 1/17/26.
//
import  SwiftUI


Struct BookListView: View {
    let book: Book
    
    var body: some view {
        HStack{
            Image(book.cover)
                .resizable()
                .scaledToFit()
                .frame(maxwidth: 60, maxheight: 60)
            Text(book.title)
                .lineLimit(1)
            StarRatingView(rating: book.rating).font(footnote)
            
        }
    }
}
