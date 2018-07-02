//
//  Position3D.swift
//  Geometry3DValueTypes
//
//  Created by Jeremy Bannister on 6/30/18.
//  Copyright © 2018 Jeremy Bannister. All rights reserved.
//

// MARK: - Initial Declaration
public struct Position3D: Equatable {
  public var x: Double
  public var y: Double
  public var z: Double
  
  public init (x: Double, y: Double, z: Double) {
    self.x = x
    self.y = y
    self.z = z
  }
}

// MARK: - Static Members
extension Position3D {
  public static let zero: Position3D = Position3D(x: 0, y: 0, z: 0)
}

// MARK: - Operator Overloads
extension Position3D {
  public static func + (lhs: Position3D, rhs: Position3D) -> Position3D {
    return Position3D(x: lhs.x + rhs.x, y: lhs.y + rhs.y, z: lhs.z + rhs.z)
  }
  public static func - (lhs: Position3D, rhs: Position3D) -> Position3D {
    return Position3D(x: lhs.x - rhs.x, y: lhs.y - rhs.y, z: lhs.z - rhs.z)
  }
}
