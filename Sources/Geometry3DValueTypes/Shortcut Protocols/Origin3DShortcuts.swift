//
//  Point3DShortcuts.swift
//  Geometry3DValueTypes
//
//  Created by Jeremy Bannister on 7/1/18.
//

public protocol Origin3DShortcuts {
  var origin: Point3D { get set }
}

extension Origin3DShortcuts {
  public var x: Double {
    get { return origin.x }
    set { origin.x = newValue }
  }
  public var y: Double {
    get { return origin.y }
    set { origin.y = newValue }
  }
  public var z: Double {
    get { return origin.z }
    set { origin.z = newValue }
  }
}
