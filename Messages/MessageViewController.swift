//
//  MessageViewController.swift
//  Messages
//
//  Created by Karan Singh on 9/1/20.
//  Copyright © 2020 Karan Singh. All rights reserved.
//

import MessageKit
import UIKit

class MessageViewController: MessagesViewController, MessagesDisplayDelegate, MessagesLayoutDelegate, MessagesDataSource{
    
    
    let currentUser = Sender(senderId: "1", displayName: "Karan")
    
    let otherUser = Sender(senderId: "2", displayName: "Nikki")
    
     var messageList : [Messages] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageList.append(Messages(sender: currentUser, messageId: "1", sentDate: Date().addingTimeInterval(-86400), kind: .text("Hey, What's up?")))
        messageList.append(Messages(sender: otherUser, messageId: "2", sentDate: Date().addingTimeInterval(-76400), kind: .text("Nothing much, what about you?")))
        messageList.append(Messages(sender: currentUser, messageId: "3", sentDate: Date().addingTimeInterval(-66400), kind: .text("I just bought a new car - a BMW")))
        messageList.append(Messages(sender: otherUser, messageId: "4", sentDate: Date().addingTimeInterval(-56400), kind: .text("That is awesome, Congratulations!")))
        
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
        messagesCollectionView.messagesDataSource = self
        

    }
    
    func currentSender() -> SenderType {
        return currentUser
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messageList[indexPath.section]
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        return messageList.count
    }
    

}
