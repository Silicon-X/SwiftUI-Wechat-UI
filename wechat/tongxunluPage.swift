//
//  tongxunluPage.swift
//  wechat
//
//  Created by 王志祥 on 2022/5/14.
//

import SwiftUI

struct tongxunluPage: View {
    @State var text2 = ""
    @State var addperson = false
    var body: some View {
        ScrollView {
            withAnimation(.spring()) {
                VStack(alignment: .leading) {
                    ForEach(0 ..< 20) { item in
                        HStack {
                            Image("雷神")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .cornerRadius(5)
                            Text("Thor son of odin")
                            Spacer()
                        }.frame(maxWidth:.infinity,maxHeight: 50)
                        Divider()
                    }
                }
            }.navigationBarTitleDisplayMode(.inline)
                .navigationTitle("通讯录")
                .offset(x: 0, y: -15)
                .padding()
                .searchable(text: $text2,placement:.automatic,prompt: Text("search"))
            
                .navigationBarItems(trailing:
                                        Button {
                    self.addperson.toggle()
                }label: {
                    Image("addperson")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
                })
        }.background(.ultraThinMaterial)
    }
}


struct tongxunluPage_Previews: PreviewProvider {
    static var previews: some View {
        tongxunluPage()
    }
}
