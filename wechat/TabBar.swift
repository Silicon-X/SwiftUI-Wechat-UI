//
//  TabBar.swift
//  wechat
//
//  Created by 王志祥 on 2022/5/5.
//

import SwiftUI

struct TabBar: View {
    
    @State var selectedTab: Tab = .微信
    
    var body: some View {
        
        NavigationView {
            ZStack(alignment: .bottom) {
                Group{
                    switch selectedTab {
                    case .微信:
                        weixinPage()
                    case .通讯录:
                        tongxunluPage()
                    case .发现:
                        faxianPage()
                    case .我:
                        woPage()
                    }
                    
                }.frame(maxWidth:.infinity,maxHeight: .infinity)
                HStack{
                    ForEach(tabItems) { item in
                        Button{
                            selectedTab = item.tab
                        }label: {
                            VStack(spacing:3) {
                                Image(systemName: item.icon)
                                    .font(.title2)
                                    .frame(width: 40, height: 35, alignment: .center)
                                Text(item.name)
                                    .font(.caption2)
                                
                            }.frame(maxWidth:.infinity)
                        }.foregroundColor(selectedTab == item.tab ? .green : .black)
                        
                    }
                }
                .padding(.horizontal,18)
                .padding(.top,5)
                .frame(height: 88, alignment: .top)
                .background(.ultraThinMaterial,in:Rectangle())
                .frame(maxHeight:.infinity,alignment: .bottom)
                .ignoresSafeArea()
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
