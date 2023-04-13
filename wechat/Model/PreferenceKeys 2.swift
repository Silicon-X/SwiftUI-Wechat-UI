//
//  PreferenceKeys.swift
//  wechat
//
//  Created by 王志祥 on 2022/5/15.
//

import SwiftUI

struct ScrollPreferenceKeys:PreferenceKey{
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
    
}
