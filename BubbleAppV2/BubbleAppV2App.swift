//
//  BubbleAppV2App.swift
//  BubbleAppV2
//
//  Created by Javier Carrillo Gallego on 21/5/22.
//

import SwiftUI

@main
struct BubbleAppV2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserPreferencesModel(numberOfConversations: 1, numberOfMessages: 4, leftContentViewType: .left, rightContentViewType: .right, backgroundColor: Color(red: 4 / 255, green: 244 / 255, blue: 4 / 255)))
                .environmentObject(UserDataModel(userConversation: []))
        }
    }
}
