//
//  PersistentBook.test.swift
//  BookManagerTests
//
//  Created by Wilbert Baker on 1/31/26.
//

import testing
testable import BookManagerCh5

@MainActor @Suite("Persistent Book tests")
struct persistentBookTest {
     @Test("Persistent book init")
     func persistentBook init() {
     //Arrange
     let title = "Test Book"
     let author = "jeff Smith"
     let defaultRating = 0
     
     //Act
     let book = PersistentBook(title : title, author: author)
     
     //Assert
     #expect(book.title == "Test Book")
     #expect
}
}
