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
