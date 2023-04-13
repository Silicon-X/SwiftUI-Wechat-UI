//
//  singleMessage.swift
//  wechat
//
//  Created by 王志祥 on 2022/5/1.
//

import SwiftUI


struct singleMessage: View {
    
   let message: Message
    
    var body: some View {
        HStack {
            Image(message.Imagename)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(4)
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text(message.name)
                        .foregroundColor(.black)
                        .font(.body)
                    Spacer()
                    Text(message.time)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                Text(message.messageContent)
                    .foregroundColor(.secondary)
                    .font(.subheadline)
            }
            Spacer()
        }.frame(height: 53)
    }
}

struct singleMessage_Previews: PreviewProvider {
    static var previews: some View {
        singleMessage(message: MessgeData[0])
    }
}
