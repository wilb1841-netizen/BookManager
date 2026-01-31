//
//  Favoriteview.swift
//  BookManager
//
//  Created by Wilbert Baker on 1/17/26.
//

import SwiftUI

struct Favoriteview: View {
    
    @Binding  var books: [Book]
    let layout = [GridItem(.flexible()), GridItem(.flexible())]
    
    //computed property
    private var favoriteBook: [Binding<Book>] {
        $books.filter{
    }
    
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVGrid(columns: layout){
                    ForEach(books, id:\.id){ book in
                        NavigationLink(destination: BookDetailView (book: $book)){
                            Text(book.title)
                                .border(.red)
                        }
                    }
                }
            }
        }
    }
