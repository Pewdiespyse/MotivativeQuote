//
//  ViewController.swift
//  P1EncouragingQuote
//
//  Created by phuuphuoc on 3/28/18.
//  Copyright © 2018 phuuphuoc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: UI Elements
    @IBOutlet weak var lblQuote: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var imgBackground: UIImageView!
    
    //MARK: Data model
    var quoteType = Int(arc4random_uniform(UInt32(DataHelper.quotes.count))) //0: Action, 1: Friendship, 2:Happiness
    var selectedIndex: Int = -1
    
    
    func generateRandomIndex(upperBound: Int) -> Int {
        //Sinh index ngau nhiens
        var newIndex = -1	
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(upperBound)))
        } while (newIndex == selectedIndex)
        return newIndex
    }

    //MARK: Xu li danh cho ViewController riengs
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showQuote()
        
        //Dang ki lang nghe notification
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.showQuoteWithNotification), name: "NewQuote", object: nil)
        

    }
    
    func showQuoteWithNotification(notification: NSNotification) {
        showQuote()
    }
    
    func showQuote() {
        //Khi man hinh xuat hien
        selectedIndex = generateRandomIndex(DataHelper.quotes[quoteType].count)
        
        //Hien thi len giao dien model tuong ung
        let data = DataHelper.getQuote(quoteType, index: selectedIndex)
        lblQuote.text = data.Quote
        lblAuthor.text = data.Author
        
        //Cap nhat anh nen
        imgBackground.image = UIImage(named: "bg0\(selectedIndex).jpg")
    }


}

