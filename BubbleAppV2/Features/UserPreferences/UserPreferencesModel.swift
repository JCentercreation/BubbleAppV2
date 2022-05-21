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
    @Published var numberOfMessages: Int
    @Published var leftContentViewType: BubbleType
    @Published var rightContentViewType: BubbleType
    @Published var backgroundColor: Color
    
    init(numberOfConversations: Int, numberOfMessages: Int, leftContentViewType: BubbleType, rightContentViewType: BubbleType, backgroundColor: Color) {
        self.numberOfConversations = numberOfConversations
        self.numberOfMessages = numberOfMessages
        self.leftContentViewType = leftContentViewType
        self.rightContentViewType = rightContentViewType
        self.backgroundColor = backgroundColor
    }
}
