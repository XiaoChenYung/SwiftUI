//
//  ContentView.swift
//  SwiftUI-P1
//
//  Created by wanba on 2019/9/27.
//  Copyright © 2019 yangxiaochen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		// 创建一个垂直容器, 左对齐
		VStack(alignment: .leading) {
			// 设置一个 font 为 title 的标题0
			Text("Turtle Rock")
				.font(.title)
			// 创建一个水平容器
			HStack {
				// 设置一个 font 为 subheadline 的详情
				Text("Joshua Tree National Park")
					.font(.subheadline)
				Spacer()
				// 设置一个 font 为 subheadline 的详情
				Text("California")
					.font(.subheadline)
			}
		}
			// 设置该 VStack 距离左右的边距是 10
		.padding(EdgeInsets.init(top: 0, leading: 10, bottom: 0, trailing: 10))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
