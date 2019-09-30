//
//  UserData.swift
//  SwiftUI-P1
//
//  Created by wanba on 2019/9/29.
//  Copyright © 2019 yangxiaochen. All rights reserved.
//

import Combine
import SwiftUI


/// 声明一个全局访问的类似环境变量的东西,在外面可以读写 
final class UserData: ObservableObject {
	@Published var showFavoritesObly = false
	@Published var landmarks = landmarkData
}
