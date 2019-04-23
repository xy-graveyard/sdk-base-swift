//
//  XYHTTPNetworkTransport.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 4/23/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo
import Foundation

/// Wraps up the HTTPNetworkTransport from Apollo + all our XY-specific stuff
class XYHTTPNetworkTransport: NetworkTransport {

    private static let xyAuthHeader = "X-Auth-Token"
    private static let endpointUrl = "https://api-account.xy.company"

    private static var serverUrl: URL = {
        guard let url = URL(string: endpointUrl) else {
            fatalError("Invalid GraphQL connection URL")
        }
        return url
    }()

    private static func sessionConfiguration(with token: String) -> URLSessionConfiguration {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = [XYHTTPNetworkTransport.xyAuthHeader: token]
        return configuration
    }

    private let transport: HTTPNetworkTransport

    init(token: String, sendOperationIdentifiers: Bool = false) {
        self.transport = HTTPNetworkTransport(
            url: XYHTTPNetworkTransport.serverUrl,
            configuration: XYHTTPNetworkTransport.sessionConfiguration(with: token),
            sendOperationIdentifiers: sendOperationIdentifiers)
    }

    func send<Operation>(operation: Operation, completionHandler: @escaping (_ response: GraphQLResponse<Operation>?, _ error: Error?) -> Void) -> Cancellable {
        return self.transport.send(operation: operation, completionHandler: completionHandler)
    }
}
