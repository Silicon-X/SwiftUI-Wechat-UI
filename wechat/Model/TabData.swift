//
//  Tab.swift
//  wechat
//
//  Created by 王志祥 on 2022/5/5.
//

import SwiftUI

struct TabItem: Identifiable {
    let id = UUID()
    var name: String
    var icon: String
    var color: Color
    var tab: Tab
}

var tabItems = [
    TabItem(name: "微信", icon: "message", color: .teal, tab: .微信),
    TabItem(name: "通讯录", icon: "person.2", color: .blue, tab: .通讯录),
    TabItem(name: "发现", icon: "safari", color: .red, tab: .发现),
    TabItem(name: "我", icon: "person", color: .pink, tab: .我)
]

enum Tab: String {
    case 微信
    case 通讯录
    case 发现
    case 我
}

