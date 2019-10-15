//
//  CircleImage.swift
//  SwiftUI-P1
//
//  Created by wanba on 2019/9/27.
//  Copyright © 2019 yangxiaochen. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
		// 声明一个 image
		Image("turtlerock")
		// 设置裁剪方式为圆形
			.clipShape(Circle())
			// 设置一个宽度为4的白色边框
			.overlay(Circle().stroke(Color.white, lineWidth: 4))
			// 设置阴影半径为10
			.shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
		.previewDevice("iPhone 8")
    }
}
