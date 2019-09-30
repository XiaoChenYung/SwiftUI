//
//  LandmarkList.swift
//  SwiftUI-P1
//
//  Created by wanba on 2019/9/29.
//  Copyright © 2019 yangxiaochen. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
	
	@EnvironmentObject private var userData: UserData
	
    var body: some View {
		NavigationView {
			List {
				
				Toggle.init(isOn: $userData.showFavoritesObly) {
					Text("是否只显示收藏")
				}
				
				ForEach(userData.landmarks) { landmark in
					if !self.userData.showFavoritesObly || landmark.isFavorite {
						NavigationLink(destination: LandmarkDetail(landmark: landmark).environmentObject(self.userData)) {
							LandmarkRow(landmark: landmark)
						}
					}
				}
			}
		.navigationBarTitle(Text("地标列表"))
		}
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        .environmentObject(UserData())
    }
}
