//
//  BubbleMessageSentView.swift
//  BubbleAppV2
//
//  Created by Javier Carrillo Gallego on 21/5/22.
//

import SwiftUI

struct BubbleMessageSentView: View {
    
    var message: String
    
    var bubbleType: BubbleType
    
    var body: some View {
        switch(bubbleType) {
        case .left:
            HStack {
                Text(message)
                    .padding()
                    .foregroundColor(.black)
                    .background(.white)
                    .multilineTextAlignment(.leading)
                    .clipShape(BubbleLeftShape())
                    .frame(maxWidth: 200, alignment: .leading)
                Spacer()
            }.padding(.horizontal)
        case .right:
            HStack {
                Spacer()
                Text(message)
                    .padding()
                    .foregroundColor(.black)
                    .background(.white)
                    .multilineTextAlignment(.trailing)
                    .clipShape(BubbleRightShape())
                    .frame(maxWidth: 200, alignment: .trailing)
            }.padding(.horizontal)
        }
    }
}

struct BubbleMessageSentView_Previews: PreviewProvider {
    static var previews: some View {
        BubbleMessageSentView(message: "Prueba", bubbleType: .left)
    }
}
