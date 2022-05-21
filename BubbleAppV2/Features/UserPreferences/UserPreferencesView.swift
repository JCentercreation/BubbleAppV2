//
//  UserPreferencesView.swift
//  BubbleAppV2
//
//  Created by Javier Carrillo Gallego on 21/5/22.
//

import SwiftUI

struct UserPreferencesView: View {
    
    @EnvironmentObject private var userPreferences: UserPreferencesModel
    
    var body: some View {
        VStack {
            HStack {
                Picker(NSLocalizedString("BubbleApp.features.userpreferences.numbermessages.picker.title", comment: ""), selection: $userPreferences.numberOfMessages) {
                        ForEach(1 ..< 30) {
                            Text("\($0)")
                        }
                }
                Picker(NSLocalizedString("BubbleApp.features.userpreferences.numberconversations.picker.title", comment: ""), selection: $userPreferences.numberOfConversations) {
                        ForEach(1 ..< 3) {
                            Text("\($0)")
                        }
                }.pickerStyle(.segmented)
                ColorPicker(NSLocalizedString("BubbleApp.features.userpreferences.backgroundcolor.colorpicker.title", comment: ""), selection: $userPreferences.backgroundColor)
            }.padding()
        }
        .background(Color.gray)
    }
}

struct UserPreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        UserPreferencesView().environmentObject(UserPreferencesModel(numberOfConversations: 1, numberOfMessages: 4, leftContentViewType: .left, rightContentViewType: .right, backgroundColor: Color(red: 4 / 255, green: 244 / 255, blue: 4 / 255)))
    }
}
