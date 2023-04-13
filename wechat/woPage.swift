//
//  woPage.swift
//  wechat
//
//  Created by 王志祥 on 2022/5/14.
//

import SwiftUI

struct woPage: View {
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 8){
                VStack {
                    HStack{
                        HStack{
                            Image("wo")
                                .resizable()
                                .frame(width: 75, height: 75)
                                .cornerRadius(5)
                            
                            VStack(alignment: .leading, spacing: 6){
                                Text("WZX")
                                    .font(.title2)
                                    .fontWeight(.medium)
                                
                                HStack {
                                    Text("微信号： 758375832")
                                        .font(.body)
                                    Spacer()
                                    Image("erweima")
                                        .resizable()
                                        .frame(width: 17, height: 17)
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.secondary)
                                }
                                Text("+状态")
                                    .font(.callout)
                                    .frame(width: 55, height: 22)
                                    .background( Capsule().stroke().foregroundColor(.secondary))
                            }
                        }.padding()
                    }
                }
                
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    HStack(spacing:20){
                        Image("zhifu")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("服务")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                    }.padding()
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight:55)
                        .background(.white)
                }
                
                VStack(spacing:0){
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        HStack(spacing:20){
                            Image("shoucang")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text("收藏")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.secondary)
                        }.padding()
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, maxHeight:55)
                            .background(.white)
                    }
                    Divider()
                        .padding(.leading,64)
                    
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        HStack(spacing:20){
                            Image("xiangce")
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
                    Divider()
                        .padding(.leading,64)
                    
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        HStack(spacing:20){
                            Image("kabao")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text("卡包")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.secondary)
                        }.padding()
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, maxHeight:55)
                            .background(.white)
                    }
                    Divider()
                        .padding(.leading,64)
                    
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        HStack(spacing:20){
                            Image("smile")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text("表情")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.secondary)
                        }.padding()
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, maxHeight:55)
                            .background(.white)
                    }
                    
                }
                
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    HStack(spacing:20){
                        Image("shezhi")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("设置")
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
            .offset(y:-30)
            //                .navigationTitle("发现")
//            .navigationBarTitleDisplayMode(.inline)
        }.background(.ultraThinMaterial)
        
    }
}

struct woPage_Previews: PreviewProvider {
    static var previews: some View {
        woPage()
    }
}
