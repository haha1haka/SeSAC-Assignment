//
//  Books.swift
//  Books
//
//  Created by HWAKSEONG KIM on 2022/07/20.
//

import Foundation

struct Book {
    var bookTitle: String
    var booksImage: String
    var bookRate: Double
    
    init(bookTitle: String, bookRate: Double) {
        self.bookTitle = bookTitle
        self.booksImage = bookTitle
        self.bookRate = bookRate
    }
}
