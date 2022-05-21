//
//  UserDataModel.swift
//  BubbleAppV2
//
//  Created by Javier Carrillo Gallego on 21/5/22.
//

import Foundation
import SwiftUI

class UserDataModel: ObservableObject {
    @Published var userConversation: [MessageType]
    
    init(userConversation: [MessageType]) {
        self.userConversation = userConversation
    }
    
    func eraseUserConversation() {
        self.userConversation.removeAll()
    }
    
}

struct MessageType: Hashable {
    var content: String
    var messageType: BubbleType
    
    init(content: String, messageType: BubbleType) {
        self.content = content
        self.messageType = messageType
    }
    
}
