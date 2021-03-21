//
//  Post.swift
//  FetchApiJSON
//
//  Created by MAB on 22/01/21.
//

import Foundation
import SwiftUI

struct Post : Codable, Identifiable {
    public var id : Int
    public var tittle : String
    public var body : String
}
