//
//  ContentView.swift
//  BubbleAppV2
//
//  Created by Javier Carrillo Gallego on 21/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var userPreferences: UserPreferencesModel
    
    var body: some View {
        VStack {
            ConversationsPanelView()
            ConversationTextFieldView()
            UserPreferencesView()
        }.background(userPreferences.backgroundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserPreferencesModel(numberOfConversations: 2, numberOfMessages: 4, leftContentViewType: .left, rightContentViewType: .right, backgroundColor: Color(red: 4 / 255, green: 244 / 255, blue: 4 / 255)))
            .environmentObject(UserDataModel(userConversation: []))
    }
}
