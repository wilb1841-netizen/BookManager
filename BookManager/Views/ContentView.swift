//
//  ContentView.swift
//  BookManager
//
//  Created by Wilbert Baker on 1/7/26.
//

import SwiftUI


struct ContentView: View {
    @State var books = getBooks()
    var books = [
        Book(title: "The Fellowship of the Ring", author: "J.R.R. Tolkien", details: "The first book in the LOTR trilog",cover:"lotr_fellowship of the Ring",
        Book(title: "The Two Towers", author: "J.R.R. Tolkien", details: "The second book in the LOTR trilogy",cover"lotr_towers"),
             Book(title: "The Return of the King", author: "J.R.R. Tolkien", details: "The final book in the LOTR trilogy",cover:"lotr_king"),
    ]
    
    var body: some View {
        NavigationStack{
            List($books, id: \.self.id){ $book in
                NavigationLink(destination: BookDetailView(book: book)){
                    //Label
                    HStack{
                        Image(book.cover)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 60, maxHeight: 60)
                        Text(book.title)
                    }
                }
                
            }
            .navigationTitle(Text("Book Manager"))
            .navigationBarItems(trailing: Button("Add"){
                showAddSheet.toggle()
            })
            .sheet(isPresented: $showAddSheet){
                //onDismiss
                books.append(newBook)
                newBook = Book(title: "")
            }
            content:{
                AddEditView(book: $newBook)
            }
        }
    }
}
    
#Preview {
    ContentView()
}
