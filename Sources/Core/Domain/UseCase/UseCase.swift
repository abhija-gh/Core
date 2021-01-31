//
//  UseCase.swift
//  
//
//  Created by Abhijana Agung Ramanda on 28/12/20.
//

import Combine

public protocol UseCase {
  associatedtype Request
  associatedtype Response
  
  func execute(request: Request) -> AnyPublisher<Response, Error>
}


