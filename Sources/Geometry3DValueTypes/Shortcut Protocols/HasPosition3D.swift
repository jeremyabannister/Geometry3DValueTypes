//
//  HasPosition3D.swift
//  Geometry3DValueTypes
//
//  Created by Jeremy Bannister on 7/1/18.
//

// MARK: - --> Initial Declaration <--
public protocol HasPosition3D {
  var position: Position3D { get set }
}

// MARK: - Shortcuts
extension HasPosition3D {
  public var x: Double {
    get { return position.x }
    set { position.x = newValue }
  }
  public var y: Double {
    get { return position.y }
    set { position.y = newValue }
  }
  public var z: Double {
    get { return position.z }
    set { position.z = newValue }
  }
}

// MARK: - Value Substitution
extension HasPosition3D {
  public func withPosition (_ newValue: Position3D) -> Self {
    var copy = self
    copy.position = newValue
    return copy
  }
}
