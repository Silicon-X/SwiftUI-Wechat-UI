//
//  faxianPage.swift
//  wechat
//
//  Created by 王志祥 on 2022/5/14.
//

import SwiftUI

struct faxianPage: View {
    var body: some View {
        
            ScrollView {
                VStack{
                    NavigationLink(destination: pengYouQuanView()) {
                        HStack{
                            Image("pengyouquan")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text("朋友圈")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.secondary)
                        }.padding()
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, maxHeight:55)
                            .background(.white)
                    }
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        HStack{
                            Image("saoyisao")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text("扫一扫")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.secondary)
                        }
                        .padding()
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight:55)
                        .background(.white)
                    }
                    
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        HStack{
                            Image("xiaochengxu")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text("小程序")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.secondary)
                        }.padding()
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, maxHeight:55)
                            .background(.white)
                    }
                    Spacer()
                }
                .padding(.vertical)
                .offset(y:-10)
                .navigationTitle("发现")
                .navigationBarTitleDisplayMode(.inline)
            }.background(.ultraThinMaterial)
        
    }
}



struct faxianPage_Previews: PreviewProvider {
    static var previews: some View {
        faxianPage()
    }
}
