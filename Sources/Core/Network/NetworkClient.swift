//
//  NetworkClient.swift
//  
//
//  Created by Abhijana Agung Ramanda on 06/01/21.
//

import Foundation
import Alamofire

public struct NetworkClient {
  public static let shared = NetworkClient()
  private let session: Session
  
  private init() {
    self.session = Session()
  }
  
  public static func request(
    _ convertible: URLRequestConvertible
  ) -> DataRequest {
    shared.session.request(convertible).validate()
  }
  
  public static func upload(
    multipartFormData: @escaping (MultipartFormData) -> Void,
    with convertible: URLRequestConvertible
  ) -> UploadRequest {
    shared.session
      .upload(
        multipartFormData: multipartFormData,
        with: convertible
      ).validate()
  }
  
  public static func upload(
    multipartFormData: @escaping (MultipartFormData) -> Void,
    to convertible: URLConvertible
  ) -> UploadRequest {
    let headers: HTTPHeaders = [
      "Content-type": "multipart/form-data",
      "Content-Disposition" : "form-data"
    ]
    return shared.session
      .upload(
        multipartFormData: multipartFormData,
        to: convertible,
        method: .post,
        headers: headers
      )
  }
}
