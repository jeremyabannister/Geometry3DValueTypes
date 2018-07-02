//
//  Point3D.swift
//  Geometry3DValueTypes
//
//  Created by Jeremy Bannister on 6/30/18.
//  Copyright © 2018 Jeremy Bannister. All rights reserved.
//

// MARK: - Initial Declaration
public struct Point3D: Equatable {
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
extension Point3D {
  public static let zero: Point3D = Point3D(x: 0, y: 0, z: 0)
}

// MARK: - Operator Overloads
extension Point3D {
  public static func + (lhs: Point3D, rhs: Point3D) -> Point3D {
    return Point3D(x: lhs.x + rhs.x, y: lhs.y + rhs.y, z: lhs.z + rhs.z)
  }
  public static func - (lhs: Point3D, rhs: Point3D) -> Point3D {
    return Point3D(x: lhs.x - rhs.x, y: lhs.y - rhs.y, z: lhs.z - rhs.z)
  }
}
