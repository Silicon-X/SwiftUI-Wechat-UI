//
//  linshi.swift
//  wechat
//
//  Created by 王志祥 on 2022/5/1.
//

import SwiftUI

struct linshi: View {
    @State private var isShowingPopover = false

    var body: some View {
        Button("Show Popover") {
            self.isShowingPopover = true
        }
        .popover(isPresented: $isShowingPopover) {
            Text("Popover Content")
                .padding()
        }
    }
}

struct linshi_Previews: PreviewProvider {
    static var previews: some View {
        linshi()
    }
}
