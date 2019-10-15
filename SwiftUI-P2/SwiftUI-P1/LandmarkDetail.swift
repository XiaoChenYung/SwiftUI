//
//  ContentView.swift
//  SwiftUI-P1
//
//  Created by wanba on 2019/9/27.
//  Copyright © 2019 yangxiaochen. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
	
	var landmark: Landmark
	
    var body: some View {
		
		VStack {
			
			// 初始化 mapView 实例
			MapView(coordinate: landmark.locationCoordinate)
				.frame(height: 300)
			
			CircleImage(image: landmark.image)
				// 这里的 offset 类似于 scrollView 的 offset offset 可以同时指定 x,y 的值，也可以单独指定其中一个
				.offset(y: -130)
				// 通过 offset 指定了向上偏移的距离后需要再设置一下 padding 的 bottom 属性进行修正，否则底部会留下空白
				.padding(.bottom, -130)
			
			// 创建一个垂直容器, 左对齐
			VStack(alignment: .leading) {
				// 设置一个 font 为 title 的标题0
				Text(landmark.name)
					.font(.title)
				// 创建一个水平容器
				HStack {
					// 设置一个 font 为 subheadline 的详情
					Text(landmark.park)
						.font(.subheadline)
						.foregroundColor(Color.red)
					Spacer()
					// 设置一个 font 为 subheadline 的详情
					Text(landmark.state)
						.font(.subheadline)
				}
			}
				// 设置该 VStack 距离左右的边距是 10
			.padding(EdgeInsets.init(top: 0, leading: 10, bottom: 0, trailing: 10))
			Spacer()
		}
		.navigationBarTitle(Text(verbatim: landmark.name), displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		LandmarkDetail(landmark: landmarkData[0])
    }
}
