//
//  DataHelper.swift
//  P1EncouragingQuote
//
//  Created by phuuphuoc on 3/29/18.
//  Copyright © 2018 phuuphuoc. All rights reserved.
//

import Foundation

class DataHelper {
    //Quotes
    static let quotes = [["A promise is a cloud; fulfillment is rain.",
        "Action will remove the doubts that theory cannot solve.",
        "An ounce of action is worth a ton of theory.",
        "He who has begun is half done.",
        "Never confuse motion with action."],
    ["Tis a great confident to tell him your faults; greater to tell him his.", "A friend can tell you things you don't want to tell yourself.",
        "A friend is a gift you give yourself",
        "A friend is someone who knows all about you, and loves you just the same.",
        "A friend is someone with whom you dare to be yourself."],
    ["Your future is created by what you do today, not tomorrow.",
        "Attitude is a little thing that makes a big difference",
        "Happiness always looks small when you hold it in your hands, but let it go, and you learn at once how big and precious it is.",
        "Happiness doesn't depend on any external conditions, it is governed by our mental attitude.",
        "Happiness is not something you postpone for the future; It is something you design for the present"]]
    //Authors
    static let authors = [["Arabian Proverb", "Tehyi Hsieh", "Friedrich Engels", "Horace", "Benjamin Franklin"],
    ["Benjamin Franklin", "France Wards Meller", "Robert Louis Stevension", "Proverb", "Frank Clane"],
    ["Robert Kiyosaki", "Winston Churchill", "Maxim Gorky", "Dale Carnegie", "Jim Rohn"]]
    
    static func getQuote(type: Int, index: Int) -> (Quote: String,Author: String) { //Quote, author
        let quote = quotes[type][index]
        let author = authors[type][index]
        return (quote, author) //Tra ve tuable
    }
    
//    static func getQuotesCount(type: Int) -> Int {
//        return quotes[type].count
//    }
//    
//    static func getQuoteTypesCount() -> Int {
//        return quotes.count
//    }
}