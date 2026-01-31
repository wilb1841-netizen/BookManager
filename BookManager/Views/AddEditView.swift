//
//  AddEditView.swift
//  BookManager
//
//  Created by Wilbert Baker on 1/15/26.
//

import SwiftUI

struct AddEditView: View {
    
    @Binding var book: Book
    @State var workingBook: Book
    
    init(book: Binding<Book>) {
        _book = book
        _workingBook = .init(initialValue: book.wrappedValue)
    }
    
    var body: some View {
        NavigationStack{
            Form {
                Section(header: Text("Book details")){
                    TextField("Title of the book", text: $workingBook.title)
                    TextField("Author", text: $workingBook.author)
                    TextEditor(text: $workingbook.details)
                        .frame(height: 150)
                    
                }
            }
            .navigationTitle("Add/Edit Book")
            .toolbar{
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        book.title = workingBook.title
                        book.authur = workingBook.author
                        book.details = workingBook.details
                    }.disabled(workingBook.title.isEmpty)
                    }
                }
            }
        }
    }
}
