//
//  ExerciseView.swift
//  SwoleApp
//
//  Created by Kelson Flint on 3/23/20.
//  Copyright © 2020 Whidbey. All rights reserved.
//

import SwiftUI

struct ExerciseView: View {
    let exercise : Exercise
    
    var body: some View {
        VStack {
            Text(exercise.name)
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(exercise: <#Exercise#>)
    }
}
