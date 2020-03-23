//
//  Exercise.swift
//  SwoleApp
//
//  Created by Kelson Flint on 3/23/20.
//  Copyright © 2020 Whidbey. All rights reserved.
//

import Foundation
import SwiftUI

struct Exercise: Hashable, Codable {
    var eid: Int
    var name: String
    var sets: Int
    var repsOrTime: Int
    var bodyPart: String
    var description: String
    var isTimed: Bool
    var equipment: String
    var demo: String
}
