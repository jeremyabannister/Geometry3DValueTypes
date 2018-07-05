//
//  HasSize3D.swift
//  Geometry3DValueTypes
//
//  Created by Jeremy Bannister on 7/1/18.
//

public protocol HasSize3D {
  var size: Size3D { get set }
}

extension HasSize3D {
  public var width: Double {
    get { return size.width }
    set { size.width = newValue }
  }
  public var height: Double {
    get { return size.height }
    set { size.height = newValue }
  }
  public var depth: Double {
    get { return size.depth }
    set { size.depth = newValue }
  }
}
