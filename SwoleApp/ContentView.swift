//
//  ContentView.swift
//  SwoleApp
//
//  Created by Kelson Flint on 3/23/20.
//  Copyright © 2020 Whidbey. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            VStack(alignment: .leading){
        
                Text("Incline Bench Press")
                    .font(.title)
                HStack(alignment: .top) {
                    Text("Bench Press")
                        .font(.subheadline)
                    Spacer()
                    Text("Squat")
                        .font(.subheadline)
                }
            }
        .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
