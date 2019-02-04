//
//  XYApolloManager.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 2/4/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo

public class XYApolloManager {

    fileprivate static let endpointUrl = "https://cmsltk3yhg.execute-api.us-east-1.amazonaws.com/dev/graphql"

    public let client: ApolloClient

    public init?() {
        guard let validUrl = URL(string: XYApolloManager.endpointUrl) else { return nil }
        self.client = ApolloClient(url: validUrl)
    }

}
