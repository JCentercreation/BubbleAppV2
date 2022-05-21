//
//  ConversationsPanelView.swift
//  BubbleAppV2
//
//  Created by Javier Carrillo Gallego on 21/5/22.
//

import SwiftUI

struct ConversationsPanelView: View {
    
    @EnvironmentObject private var userPreferences: UserPreferencesModel
    
    @EnvironmentObject private var userData: UserDataModel
    
    var body: some View {
        VStack {
            Spacer()
            if userData.userConversation.count <= userPreferences.numberOfMessages {
                ForEach(userData.userConversation, id: \.self) { message in
                    if message.messageType == .left {
                        HStack {
                            BubbleMessageSentView(message: message.content, bubbleType: message.messageType)
                            Spacer()
                        }
                    } else {
                        HStack {
                            Spacer()
                            BubbleMessageSentView(message: message.content, bubbleType: message.messageType)
                        }
                    }
                }
            } else {
                ForEach(userData.userConversation[(userData.userConversation.count - userPreferences.numberOfMessages)..<userData.userConversation.count], id: \.self) { message in
                    BubbleMessageSentView(message: message.content, bubbleType: message.messageType)
                }
            }
            Spacer()
        }
    }
}

struct ConversationsPanelView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsPanelView()
            .environmentObject(UserPreferencesModel(numberOfConversations: 2, numberOfMessages: 4, leftContentViewType: .left, rightContentViewType: .right, backgroundColor: Color(red: 4 / 255, green: 244 / 255, blue: 4 / 255)))
            .environmentObject(UserDataModel(userConversation: []))
    }
}
