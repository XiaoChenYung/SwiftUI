//
//  Some.swift
//  SwiftUI-P1
//
//  Created by wanba on 10/9/19.
//  Copyright © 2019 yangxiaochen. All rights reserved.
//

import Foundation

/// 声明一个 Shape 协议
protocol Shape {}

/// 声明一个遵从 Shape 协议的 Rectangle 结构体
struct Rectangle: Shape {}

/// 声明一个遵从 Shape 协议的 Union 泛型结构体, 泛型中需要传入两个遵从 Shape 参数的两个类型
struct Union<A: Shape, B: Shape>: Shape {
    var a: A
    var b: B
}

/// 声明一个遵从 Shape 协议的 Transformed 泛型结构体, 泛型中需要传入一个遵从 Shape 协议的一个类型
struct Transformed<S: Shape>: Shape {
    var shape: S
}

/// 声明一个 GameObject 协议，遵从该协议需要初始化一个 shape 变量，该变量需要遵从 ShapeType 协议
protocol GameObject {
    associatedtype ShapeType: Shape
    var shape: ShapeType { get }
}


/// 传统写法
struct EightPointedStar: GameObject {
    var shape: Union<Rectangle, Transformed<Rectangle>> {
        Union(a:Rectangle(), b:Transformed(shape: Rectangle()))
    }
}

struct EightPointedStar2: GameObject {
	var shape: some Shape {
		Union(a:Rectangle(), b:Transformed(shape: Rectangle()))
	}
}

