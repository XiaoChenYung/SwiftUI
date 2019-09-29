//
//  LandmarkRow.swift
//  SwiftUI-P1
//
//  Created by wanba on 2019/9/29.
//  Copyright © 2019 yangxiaochen. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
	
	var landmark: Landmark
	
    var body: some View {
		HStack {
			landmark.image
				.resizable()
				.frame(width: 50, height: 50)
			Text.init(verbatim: landmark.name)
			Spacer()
		}
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			LandmarkRow(landmark: landmarkData[0])
			LandmarkRow(landmark: landmarkData[1])
		}
		.previewLayout(.fixed(width: 300, height: 70))
    }
}
