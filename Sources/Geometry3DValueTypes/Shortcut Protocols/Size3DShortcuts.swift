//
//  Size3DShortcuts.swift
//  Geometry3DValueTypes
//
//  Created by Jeremy Bannister on 7/1/18.
//

public protocol Size3DShortcuts {
  var size: Size3D { get set }
}

extension Size3DShortcuts {
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
