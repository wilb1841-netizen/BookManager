//
//  bookDetailView.swift
//  BookManager
//
//  Created by Wilbert Baker on 1/9/26.
//

import SwiftUI

struct BookDetailView: View {
    var book: Book
    var b = "test"
    @State var showEditSheet: Bool = false
    
    var body: some View {
                   Image(book.cover)
                    //Image("lotr_fellowship")
                        .resizable()
                        .scaledToFit()
                        .frame(width:100, height: 150)
                        .padding(.vertical,20)
                    VStack{
                        //Title
                        Text(book.title)
                            .font(.largeTitle)
                        // by author
                        Text("by \(book.author)")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        //Put the genre over here
                        HStack{
                            CustomCapsule(text: book.genre.rawValue)
                                
                            CustomCapsule(text: book.readingStatus.rawValue, color: .red)
                        //Favorite toggle
                            FavoriteToggle(iszfavorite:$book.isFavorite)
                            
                        Button("Change the book"){
                            book.title = "new title \(Data().timeIntervalSince1970)"
                        
                    }
                }
                // Details
                Text(book.details)
               }
            }
        
           .navigationBarItems(trailing: Button("Edit") {
            showEditSheet.toggle()
        })
           .sheet(isPresented: $showEditSheet) {
               AddEditView(book: $book, something:"else")
                
            }
        }
    }
}


  
    

