//
//  ConversationTextFieldView.swift
//  BubbleAppV2
//
//  Created by Javier Carrillo Gallego on 21/5/22.
//

import SwiftUI

struct ConversationTextFieldView: View {
    
    @EnvironmentObject private var userPreferences: UserPreferencesModel
    @EnvironmentObject private var userData: UserDataModel
    
    @State var messageLeft: MessageType = MessageType(content: "", messageType: .left)
    @State var messageRight: MessageType = MessageType(content: "", messageType: .right)
    
    
    var body: some View {
        VStack {
            if userPreferences.numberOfConversations <= 1 {
                VStack {
                    BubbleMessageView(message: $messageLeft.content, bubbleType: .left)
                    TextField("Write your message here", text:  $messageLeft.content)
                        .foregroundColor(.white)
                        .background(.black)
                        .cornerRadius(15)
                        .onSubmit {
                            if messageLeft.content.isEmpty {
                                return
                            } else {
                                userData.userConversation.append(messageLeft)
                                messageLeft.content = ""
                            }
                        }
                }
            } else {
                HStack {
                    VStack(alignment: .leading) {
                        BubbleMessageView(message: $messageLeft.content, bubbleType: .left)
                        TextField("Write your message here", text:  $messageLeft.content)
                            .foregroundColor(.white)
                            .background(.black)
                            .cornerRadius(15)
                            .onSubmit {
                                if messageLeft.content.isEmpty {
                                    return
                                } else {
                                    userData.userConversation.append(messageLeft)
                                    messageLeft.content = ""
                                }
                            }

                    }
                    VStack(alignment: .trailing) {
                        BubbleMessageView(message: $messageRight.content, bubbleType: .right)
                        TextField("Write your message here", text:  $messageRight.content)
                            .foregroundColor(.white)
                            .background(.black)
                            .cornerRadius(15)
                            .onSubmit {
                                if messageRight.content.isEmpty {
                                    return
                                } else {
                                    userData.userConversation.append(messageRight)
                                    messageRight.content = ""
                                }
                            }

                    }
                }
            }
            
        }
    }
}

struct ConversationTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationTextFieldView()
            .environmentObject(UserPreferencesModel(numberOfConversations: 2, numberOfMessages: 4, leftContentViewType: .left, rightContentViewType: .right, backgroundColor: Color(red: 4 / 255, green: 244 / 255, blue: 4 / 255)))
            .environmentObject(UserDataModel(userConversation: [MessageType(content: "Izq", messageType: .left), MessageType(content: "Der", messageType: .right)]))
    }
}
