//
//  Size3D.swift
//  Geometry3DValueTypes
//
//  Created by Jeremy Bannister on 6/30/18.
//

// MARK: - Initial Declaration
public struct Size3D {
  public var width: Double
  public var height: Double
  public var depth: Double
}

// MARK: - Static Members
extension Size3D {
  public static let zero: Size3D = Size3D(width: 0, height: 0, depth: 0)
}
