//
//  chatPage.swift
//  wechat
//
//  Created by 王志祥 on 2022/5/4.
//

import SwiftUI

struct chatPage: View {
    @State var text = ""
    let message: Message
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                HStack(spacing:3){
                    Image(systemName: "speaker.wave.2.circle")
                        .font(.largeTitle)
                        .padding(3)
                    TextField("", text: $text)
                        .textFieldStyle(.roundedBorder)
                    Image(systemName: "face.smiling")
                        .font(.largeTitle)
                    Image(systemName: "plus.circle")
                        .font(.largeTitle)
                        .padding(3)
                }
                .padding(.vertical,2)
                .background(.ultraThinMaterial)
            }
            .navigationTitle(message.name)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                print("点击已提交！")
            }) {
                HStack(spacing:3) {
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 5, height: 5, alignment: .center)
                        .foregroundColor(.black)
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 5, height: 5, alignment: .center)
                        .foregroundColor(.black)
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 5, height: 5, alignment: .center)
                        .foregroundColor(.black)
                }
            })
            .navigationBarItems(leading:
                                    Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack(spacing:3) {
                    
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.black)
                }
            })
        }
        .navigationBarHidden(true)
        //只隐藏系统导航栏中的返回键
//        .navigationBarBackButtonHidden(true)
    }
}

struct chatPage_Previews: PreviewProvider {
    static var previews: some View {
        chatPage(message: MessgeData[0])
    }
}
