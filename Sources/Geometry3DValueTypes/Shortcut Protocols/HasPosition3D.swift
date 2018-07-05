//
//  HasPosition3D.swift
//  Geometry3DValueTypes
//
//  Created by Jeremy Bannister on 7/1/18.
//

public protocol HasPosition3D {
  var position: Position3D { get set }
}

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
