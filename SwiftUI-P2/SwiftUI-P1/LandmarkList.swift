//
//  LandmarkList.swift
//  SwiftUI-P1
//
//  Created by wanba on 2019/9/29.
//  Copyright © 2019 yangxiaochen. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
		NavigationView {
			List(landmarkData) { landmark in
				NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
					LandmarkRow(landmark: landmark)
				}
			}
		.navigationBarTitle(Text("地标列表"))
		}
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
