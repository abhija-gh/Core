//
//  File.swift
//  
//
//  Created by Abhijana Agung Ramanda on 14/01/21.
//

import Foundation

public enum PresenterState {
  case loading
  case error(_ message: String)
  case populated
  case empty
}

/*
// Struct version
public struct PresenterState: RawRepresentable, Equatable {
  public typealias RawValue = String
  public var rawValue: String
  
  public static let loading = PresenterState(rawValue: "loading")
  public static let error = PresenterState(rawValue: "error")
  public static let populated = PresenterState(rawValue: "populated")
  public static let empty = PresenterState(rawValue: "empty")
  
  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension PresenterState: Hashable, Comparable {
  public static func < (lhs: PresenterState, rhs: PresenterState) -> Bool {
    lhs.rawValue < rhs.rawValue
  }
  
  public var hashValue: Int {
    rawValue.hashValue
  }
}
*/
