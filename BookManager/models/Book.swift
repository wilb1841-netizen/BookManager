//
//  book.swift
//  BookManager
//
//  Created by Wilbert Baker on 1/7/26.
//
Import Foundation

struct Book: Hashable {
    let id: UUID = UUID()
    var title: String = ""
    var author: String = ""
    var details: String = ""
    var cover: String = ""
    
    /*
     review
     rating
     genre
     readingStatus
     */
}
