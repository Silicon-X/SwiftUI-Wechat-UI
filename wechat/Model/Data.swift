//
//  Data.swift
//  wechat
//
//  Created by 王志祥 on 2022/5/1.
//

import Foundation

struct Message : Identifiable {
    
    var id = UUID()
    var name:String
    var Imagename:String
    var messageContent:String
    var time:String
    
}

let MessgeData = [
    Message(name:"钢铁侠",Imagename:"钢铁侠",messageContent:"我就是钢铁侠", time: "22:09"),
    Message(name:"蜘蛛侠",Imagename:"蜘蛛侠",messageContent:"能力越大责任越大", time: "12:01"),
    Message(name:"Tim Cook",Imagename:"Tim Cook",messageContent:"iphone 14先给你寄一台", time: "02:00"),
    Message(name:"雷神",Imagename:"雷神",messageContent:"我的锤子🔨呢", time: "12:09"),
    Message(name:"绿巨人",Imagename:"绿巨人",messageContent:"我时刻都很愤怒", time: "09:44"),
    Message(name:"鹰眼",Imagename:"鹰眼",messageContent:"我百步穿杨", time: "03:03"),

]

class wechat: ObservableObject {
    
    
}
