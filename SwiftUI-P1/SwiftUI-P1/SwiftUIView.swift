//
//  SwiftUIView.swift
//  SwiftUI-P1
//
//  Created by wanba on 10/9/19.
//  Copyright © 2019 yangxiaochen. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
		HStack {
			Text("啊哈哈")
		}
    }
}

struct SwiftUIView_Previews: PreviewProvider {
	static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            SwiftUIView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
