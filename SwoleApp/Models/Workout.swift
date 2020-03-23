//
//  Workout.swift
//  SwoleApp
//
//  Created by Kelson Flint on 3/23/20.
//  Copyright © 2020 Whidbey. All rights reserved.
//

import Foundation
import SwiftUI

struct Workout: Hashable, Codable {
    var wid: Int
    var name: String
    var numCycles: Int
    var isCustom: Bool
    var exerciseList: [Exercise]
    var bodyParts: String
    var duration: Int
}
