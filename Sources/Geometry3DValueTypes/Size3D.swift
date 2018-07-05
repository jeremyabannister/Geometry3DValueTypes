//
//  Size3D.swift
//  Geometry3DValueTypes
//
//  Created by Jeremy Bannister on 6/30/18.
//  Copyright © 2018 Jeremy Bannister. All rights reserved.
//

// MARK: - Initial Declaration
public struct Size3D: Equatable {
  public var width: Double
  public var height: Double
  public var depth: Double
  
  public init (width: Double, height: Double, depth: Double) {
    self.width = width
    self.height = height
    self.depth = depth
  }
}

// MARK: - Static Members
extension Size3D {
  public static let zero: Size3D = Size3D(width: 0, height: 0, depth: 0)
}

//MARK: - Value Substitution
extension Size3D {
  public func with (width: Double) -> Size3D {
    return Size3D(width: width, height: self.height, depth: self.depth)
  }
  public func with (height: Double) -> Size3D {
    return Size3D(width: self.width, height: height, depth: self.depth)
  }
  public func with (depth: Double) -> Size3D {
    return Size3D(width: self.width, height: self.height, depth: depth)
  }
}
