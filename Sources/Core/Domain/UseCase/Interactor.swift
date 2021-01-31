//
//  Interactor.swift
//  
//
//  Created by Abhijana Agung Ramanda on 28/12/20.
//

import Foundation
import Combine

public class Interactor<Request, Response, R: Repository>: UseCase
where
  R.Request == Request,
  R.Response == Response
{
  private var repository: R
  
  public init(repository: R) {
    self.repository = repository
  }
  
  public func execute(request: Request) -> AnyPublisher<Response, Error> {
    return repository.execute(request: request)
  }
  
}
