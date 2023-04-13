//
//  pinglunView.swift
//  wechat
//
//  Created by 王志祥 on 2022/5/18.
//

import SwiftUI

struct pinglunView: View {
    var body: some View {
        HStack(spacing:1) {
            Spacer()
            Image(systemName: "heart")
                .font(.footnote)
            Text("赞")
                .font(.footnote)
            Spacer()
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 0.6)
                .padding(.vertical,4)
            Spacer()
            Image(systemName: "bubble.left")
                .font(.footnote)
            Text("评论")
                .font(.footnote)
            Spacer()
        }
        .foregroundColor(.white)
        .frame(width: 140, height: 35)
        .background(.black)
        .opacity(0.6)
        .cornerRadius(6)
    }
}

struct pinglunView_Previews: PreviewProvider {
    static var previews: some View {
        pinglunView()
    }
}
