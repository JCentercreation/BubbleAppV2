//
//  UserPreferencesModel.swift
//  BubbleAppV2
//
//  Created by Javier Carrillo Gallego on 21/5/22.
//  ChrpmaKey Verde -> Color(red: 4 / 255, green: 244 / 255, blue: 4 / 255)

import Foundation
import SwiftUI

class UserPreferencesModel: ObservableObject {
    @Published var numberOfConversations: Int
    @Published var singleConversationContentViewType: BubbleType
    @Published var singleConversationNumberMessages: Int
    @Published var leftContentViewType: BubbleType
    @Published var rightContentViewType: BubbleType
    @Published var backgroundColor: Color
    
    init(numberOfConversations: Int, singleConversationContentViewType: BubbleType, singleConversationNumberMessages: Int, leftContentViewType: BubbleType, rightContentViewType: BubbleType, backgroundColor: Color) {
        self.numberOfConversations = numberOfConversations
        self.singleConversationContentViewType = singleConversationContentViewType
        self.singleConversationNumberMessages = singleConversationNumberMessages
        self.leftContentViewType = leftContentViewType
        self.rightContentViewType = rightContentViewType
        self.backgroundColor = backgroundColor
    }
}
