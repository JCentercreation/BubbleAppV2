//
//  UserDataModel.swift
//  BubbleAppV2
//
//  Created by Javier Carrillo Gallego on 21/5/22.
//

import Foundation
import SwiftUI

class UserDataModel: ObservableObject {
    @Published var userConversation: [String]
    
    init(userConversation: [String]) {
        self.userConversation = userConversation
    }
}
