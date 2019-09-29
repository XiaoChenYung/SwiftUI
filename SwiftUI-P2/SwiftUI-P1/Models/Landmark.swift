//
//  Landmark.swift
//  SwiftUI-P1
//
//  Created by wanba on 2019/9/29.
//  Copyright © 2019 yangxiaochen. All rights reserved.
//

import SwiftUI
import CoreLocation


/// 地标模型 需要注意的是如果该模型要在列表中使用需要遵从 Identifiable 协议
struct Landmark: Hashable, Codable, Identifiable {
	
	var id: Int
	var name: String
	fileprivate var imageName: String
	fileprivate var coordinates: Coordinates
	var state: String
	var park: String
    var category: Category
	
	var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
	
}


extension Landmark {
	
	/// 获取 image 扩展
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

/// 位置模型
struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
