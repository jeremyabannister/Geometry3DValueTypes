//
//  Position3DShortcuts.swift
//  Geometry3DValueTypes
//
//  Created by Jeremy Bannister on 7/1/18.
//

public protocol Position3DShortcuts {
  var position: Position3D { get set }
}

extension Position3DShortcuts {
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
