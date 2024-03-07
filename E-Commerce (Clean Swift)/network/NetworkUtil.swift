//
//  NetworkUtil.swift
//  E-Commerce (Clean Swift)
//
//  Created by Vusal Islamzada on 07.03.24.
//

import Foundation

class NetworkUtil: NSObject {

}

enum HTTPMethod : String {
    case get = "GET"
    case post = "POST"
}

enum NetworkError : Error {
    case invalidURL
    case noData
    case decodingError
    case httpResponseError(statusCode : Int)
    case unknown(Error)
}
