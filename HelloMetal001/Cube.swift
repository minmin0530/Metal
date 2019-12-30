//
//  Triangle.swift
//  HelloMetal001
//
//  Created by Yoshiki Izumi on 2019/12/28.
//  Copyright © 2019 Yoshiki Izumi. All rights reserved.
//

import Foundation

struct Vertex2 {
    var position: vector_float4
    var color: vector_float4
    var normal: vector_float3
}

let white_face : vector_float4 = [0.5, 0.5, 0.5, 0.3]
class Cube {
    
    var vertexData = [
        Vertex2(position: [ 1.0,  1.0, 1.0, 1.0], color: white_face, normal: [0.0, 0.0, 1.0]),
        Vertex2(position: [-1.0,  1.0, 1.0, 1.0], color: white_face, normal: [0.0, 0.0, 1.0]),
        Vertex2(position: [ 1.0, -1.0, 1.0, 1.0], color: white_face, normal: [0.0, 0.0, 1.0]),
        Vertex2(position: [ 1.0, -1.0, 1.0, 1.0], color: white_face, normal: [0.0, 0.0, 1.0]),
        Vertex2(position: [-1.0,  1.0, 1.0, 1.0], color: white_face, normal: [0.0, 0.0, 1.0]),
        Vertex2(position: [-1.0, -1.0, 1.0, 1.0], color: white_face, normal: [0.0, 0.0, 1.0]),
        
        
        Vertex2(position: [-1.0, 1.0,  1.0, 1.0], color: white_face, normal: [0.0, 1.0, 0.0]),
        Vertex2(position: [ 1.0, 1.0,  1.0, 1.0], color: white_face, normal: [0.0, 1.0, 0.0]),
        Vertex2(position: [ 1.0, 1.0, -1.0, 1.0], color: white_face, normal: [0.0, 1.0, 0.0]),
        Vertex2(position: [-1.0, 1.0,  1.0, 1.0], color: white_face, normal: [0.0, 1.0, 0.0]),
        Vertex2(position: [ 1.0, 1.0, -1.0, 1.0], color: white_face, normal: [0.0, 1.0, 0.0]),
        Vertex2(position: [-1.0, 1.0, -1.0, 1.0], color: white_face, normal: [0.0, 1.0, 0.0]),
        
        Vertex2(position: [1.0,  1.0, -1.0, 1.0], color: white_face, normal: [1.0, 0.0, 0.0]),
        Vertex2(position: [1.0,  1.0,  1.0, 1.0], color: white_face, normal: [1.0, 0.0, 0.0]),
        Vertex2(position: [1.0, -1.0,  1.0, 1.0], color: white_face, normal: [1.0, 0.0, 0.0]),
        Vertex2(position: [1.0,  1.0, -1.0, 1.0], color: white_face, normal: [1.0, 0.0, 0.0]),
        Vertex2(position: [1.0, -1.0,  1.0, 1.0], color: white_face, normal: [1.0, 0.0, 0.0]),
        Vertex2(position: [1.0, -1.0, -1.0, 1.0], color: white_face, normal: [1.0, 0.0, 0.0]),
        
        Vertex2(position: [-1.0,  1.0, -1.0, 1.0], color: white_face, normal: [0.0, 0.0, 1.0]),
        Vertex2(position: [ 1.0,  1.0, -1.0, 1.0], color: white_face, normal: [0.0, 0.0, 1.0]),
        Vertex2(position: [ 1.0, -1.0, -1.0, 1.0], color: white_face, normal: [0.0, 0.0, 1.0]),
        Vertex2(position: [-1.0,  1.0, -1.0, 1.0], color: white_face, normal: [0.0, 0.0, 1.0]),
        Vertex2(position: [ 1.0, -1.0, -1.0, 1.0], color: white_face, normal: [0.0, 0.0, 1.0]),
        Vertex2(position: [-1.0, -1.0, -1.0, 1.0], color: white_face, normal: [0.0, 0.0, 1.0]),
        
        Vertex2(position: [ 1.0, -1.0,  1.0, 1.0], color: white_face, normal: [0.0, 1.0, 0.0]),
        Vertex2(position: [-1.0, -1.0,  1.0, 1.0], color: white_face, normal: [0.0, 1.0, 0.0]),
        Vertex2(position: [ 1.0, -1.0, -1.0, 1.0], color: white_face, normal: [0.0, 1.0, 0.0]),
        Vertex2(position: [ 1.0, -1.0, -1.0, 1.0], color: white_face, normal: [0.0, 1.0, 0.0]),
        Vertex2(position: [-1.0, -1.0,  1.0, 1.0], color: white_face, normal: [0.0, 1.0, 0.0]),
        Vertex2(position: [-1.0, -1.0, -1.0, 1.0], color: white_face, normal: [0.0, 1.0, 0.0]),
        
        Vertex2(position: [-1.0,  1.0,  1.0, 1.0], color: white_face, normal: [1.0, 0.0, 0.0]),
        Vertex2(position: [-1.0,  1.0, -1.0, 1.0], color: white_face, normal: [1.0, 0.0, 0.0]),
        Vertex2(position: [-1.0, -1.0,  1.0, 1.0], color: white_face, normal: [1.0, 0.0, 0.0]),
        Vertex2(position: [-1.0, -1.0,  1.0, 1.0], color: white_face, normal: [1.0, 0.0, 0.0]),
        Vertex2(position: [-1.0,  1.0, -1.0, 1.0], color: white_face, normal: [1.0, 0.0, 0.0]),
        Vertex2(position: [-1.0, -1.0, -1.0, 1.0], color: white_face, normal: [1.0, 0.0, 0.0]),
    ]
    
    init(r:Float,g:Float,b:Float,a:Float,sx:Float,sy:Float,sz:Float) {
        for i in 0..<vertexData.count {
            vertexData[i].color[0] = r
            vertexData[i].color[1] = g
            vertexData[i].color[2] = b
            vertexData[i].color[3] = a
            vertexData[i].position[0] *= sx
            vertexData[i].position[1] *= sy
            vertexData[i].position[2] *= sz
        }
    }
    func setColor(r:Float,g:Float,b:Float,a:Float) {
        for i in 0..<vertexData.count {
            vertexData[i].color[0] = r
            vertexData[i].color[1] = g
            vertexData[i].color[2] = b
            vertexData[i].color[3] = a
        }
    }
    func setSize(size:Float) {
        for i in 0..<vertexData.count {
            vertexData[i].position[0] *= size
            vertexData[i].position[1] *= size
            vertexData[i].position[2] *= size
        }
    }
}
