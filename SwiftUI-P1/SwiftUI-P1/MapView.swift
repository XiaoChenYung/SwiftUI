//
//  MapView.swift
//  SwiftUI-P1
//
//  Created by wanba on 2019/9/27.
//  Copyright © 2019 yangxiaochen. All rights reserved.
//

import SwiftUI
import MapKit


struct MapView: UIViewRepresentable {
	
	//	UIViewRepresentable 协议实现构造方法
	func makeUIView(context: Context) -> MKMapView {
		MKMapView.init(frame: CGRect.zero)
	}
	
	//	UIViewRepresentable 协议实现更新的方法
	func updateUIView(_ uiView: MKMapView, context: Context) {
		let coordinate = CLLocationCoordinate2D.init(latitude: 34, longitude: 116)
		let span = MKCoordinateSpan.init(latitudeDelta: 2.0, longitudeDelta: 2.0)
		let region = MKCoordinateRegion.init(center: coordinate, span: span)
		uiView.setRegion(region, animated: true)
	}
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
		MapView()
    }
}
