//
//  pengYouQuanView.swift
//  wechat
//
//  Created by 王志祥 on 2022/5/15.
//

import SwiftUI

struct pengYouQuanView: View {
    @State var hasScrolled = true
    @Environment(\.presentationMode) var presentationMode
    @State var islike = false
    
    var body: some View {
        ZStack {
            
            ScrollView(showsIndicators: false){
                GeometryReader { proxy in
//                    Text("\(proxy.frame(in:.named("scroll")).minY)")
                    Color.clear.preference(key: ScrollPreferenceKeys.self, value: proxy.frame(in: .named("scroll")).minY)
                }.frame(height:0)
                
                VStack{
                    
                    //朋友圈主页及头像部分
                    ZStack {
                        Image("rock")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth:.infinity)
                        HStack {
                            Spacer()
                            VStack{
                                Spacer()
                                HStack{
                                    Text("WZX")
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .fontWeight(.medium)
                                    Image("wo")
                                        .resizable()
                                        .frame(width: 90, height: 90)
                                        .cornerRadius(6)
                                }.offset(x: 0, y: 40)
                                    .padding()
                            }
                        }
                    }.offset(x: 0, y: -10)
                    
                    //朋友圈内容部分
                    VStack{
                        HStack(spacing:8){
                            
                            VStack {
                                Image("钢铁侠")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(5)
                                Spacer()
                            }
                            
                            VStack (alignment: .leading, spacing: 3){
                                Text("Tony Stark")
                                    .font(.headline)
                                    .foregroundColor(.blue)
                                Text("I am Iron Man,I am Iron ManI am Iron ManI am Iron ManI am Iron ManI am")
                                    .lineLimit(6)
                                Image("光明顶")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                
                                //时间与评论
                                HStack {
                                    Text("\(Date().formatted(date: .omitted, time:.shortened))")
                                        .foregroundColor(.secondary)
                                    Spacer()
                                    
                                    if islike == true {
                                        pinglunView()
                                        
                                    }
                                    
                                    Button {
                                        withAnimation(.easeInOut(duration: 0)){
                                            islike.toggle()
                                        }
                                        
                                    } label: {
                                        Image("coment")
                                            .resizable()
                                            .foregroundColor(.black)
                                            .frame(width: 35, height: 20)
                                            .cornerRadius(3)
                                        
                                    }
                                }.frame(height: 40)
                                Spacer(minLength: 4)
                            }
                        }
                        Divider()
                    }
                    .padding(.horizontal)
                    .padding(.vertical,40)
                    Spacer()
                }
            }
            .coordinateSpace(name: "scroll")
            .onPreferenceChange(ScrollPreferenceKeys.self,perform:{ value in
                withAnimation(.easeInOut) {
                    if value < 0 {
                        hasScrolled = true
                    } else {
                        hasScrolled = false
                    }
                }
            })
            .navigationBarHidden(true)
            .ignoresSafeArea()
            //朋友圈顶部栏
            
            //黑色
            VStack {
                HStack (alignment:.bottom){
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack(spacing:3) {

                            Image(systemName: "chevron.backward")
                                .foregroundColor(.black)
                        }
                    }
                    Spacer()
                    Text("朋友圈")
                        .font(.headline)
                    Spacer()

                    Button {
                        print("zhaoxiangji")
                    } label: {
                        Image(systemName: "camera")
                            .foregroundColor(.black)
                    }
                }
                .offset(x: 0, y: 20)
                .frame(maxWidth:.infinity,maxHeight: 60)
                .padding()
                .background(.ultraThinMaterial)
                Spacer()
            }
//                .opacity(hasScrolled ? 0 : 0)
                .ignoresSafeArea()


            //顶部返回以及拍照按键
            //白色
//            VStack {
//                HStack (alignment:.bottom){
//                    Button(action: {
//                        self.presentationMode.wrappedValue.dismiss()
//                    }) {
//                        HStack(spacing:3) {
//                            Image(systemName: "chevron.backward")
//                                .foregroundColor(.white)
//                        }
//                    }
//                    Spacer()
//                    Text("")
//                        .font(.headline)
//                    Spacer()
//
//                    Button {
//                        print("zhaoxiangji")
//                    } label: {
//                        Image(systemName: "camera.fill")
//                            .foregroundColor(.white)
//                    }
//                }
//                .offset(x: 0, y: 20)
//                .frame(maxWidth:.infinity,maxHeight: 60)
//                .padding()
//
//                Spacer()
//            }
//            .opacity(hasScrolled ? 1 : 1)
//                .ignoresSafeArea()
        }
    }
}

struct pengYouQuanView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            pengYouQuanView()
           
        }
    }
}
