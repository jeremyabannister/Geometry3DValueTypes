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
  
  public init (_ x: Double, _ y: Double, _ z: Double) {
    self.init(x: x, y: y, z: z)
  }
}

// MARK: - Static Members
extension Position3D {
  public static let zero: Position3D = .init(0, 0, 0)
}

// MARK: - Vector3D Typealias
public typealias Vector3D = Position3D

// MARK: - Translation
extension Position3D {
  public func translated (by position: Vector3D) -> Position3D { // <-- Overload Funnel
    return self + position
  }
  public func translated (by x: Double, _ y: Double, _ z: Double) -> Position3D {
    return translated(by: Vector3D(x, y, z))
  }
}

//MARK: - Value Substitution
extension Position3D {
  public func with (x: Double) -> Position3D {
    return Position3D(x: x, y: self.y, z: self.z)
  }
  public func with (y: Double) -> Position3D {
    return Position3D(x: self.x, y: y, z: self.z)
  }
  public func with (z: Double) -> Position3D {
    return Position3D(x: self.x, y: self.y, z: z)
  }
}

// MARK: - Operator Overloads
extension Position3D {
  public static func + (lhs: Position3D, rhs: Position3D) -> Position3D {
    return Position3D(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z)
  }
  public static func - (lhs: Position3D, rhs: Position3D) -> Position3D {
    return Position3D(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z)
  }
}
