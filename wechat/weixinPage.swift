//
//  weixinPage.swift
//  wechat
//
//  Created by 王志祥 on 2022/5/1.
//

import SwiftUI

struct weixinPage: View {
    
    @State var isShowingPopover = false
    @State var text = ""
    @State var selection = 0
    var body: some View {
        
        ScrollView {
            withAnimation(.spring()) {
                ForEach(MessgeData) { message in
                    NavigationLink(destination: chatPage(message: message)){
                        singleMessage(message: message)
                            .swipeActions{
                                Button{
                                    print("do something")
                                }label: {
                                    Image(systemName: "bell")
                                }.tint(.yellow)
                                
                                Button{
                                    print("trash do something")
                                }label: {
                                    Image(systemName: "trash")
                                }.tint(.red)
                            }
                    }
                    Divider()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("微信")
            .offset(x: 0, y: -15)
            .padding()
            .searchable(text: $text,placement:.automatic,prompt: Text("搜索"))
            .navigationBarItems(trailing:
                                    Button {
                self.isShowingPopover.toggle()
            }label: {
                Image(systemName: "plus.circle")
                    .foregroundColor(.black)
            }
                .popover(isPresented: $isShowingPopover) {
                    Text("Popover Content")
                        .frame(width: 300, height: 300, alignment: .center)
                    
                }
            )
        }.background(.ultraThinMaterial)
    }
}

struct weixinPage_Previews: PreviewProvider {
    static var previews: some View {
        weixinPage()
    }
}
