//
//  Struct.swift
//  Messages
//
//  Created by Karan Singh on 9/1/20.
//  Copyright © 2020 Karan Singh. All rights reserved.
//

import MessageKit
import UIKit
import Foundation

struct Sender: SenderType {
    var senderId: String
    
    var displayName: String

}

struct Messages : MessageType {
    var sender: SenderType
    
    var messageId: String
    
    var sentDate: Date
    
    var kind: MessageKind
    
}
