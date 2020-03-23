//
//  ExerciseView.swift
//  SwoleApp
//
//  Created by Kelson Flint on 3/23/20.
//  Copyright © 2020 Whidbey. All rights reserved.
//

import SwiftUI

struct Response: Codable {
    var exerciseList : [Exercise]
}

struct ExerciseView: View {
    @State var exercises = [Exercise]()
    
    var body: some View {
        List(exercises, id: \.eid) { item in
           VStack(alignment: .leading) {
               Text(item.name)
                   .font(.headline)
               Text(item.description)
           }
        }
        .onAppear(perform: loadData)
    }
    
    func loadData() {
        guard let url = URL(string: "http://127.0.0.1:8000/api/exercises/") else {
            print("Invalid URL")
            return
        }
        //let request = URLRequest(url:url)
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do {
                if let todoData = data {
                    let decodedResponse = try JSONDecoder().decode([Exercise].self, from: todoData)
                        // we have good data – go back to the main thread
                        DispatchQueue.main.async {
                            // update our UI
                            self.exercises = decodedResponse
                        }
                    } else {
                        print("No data")
                    }
            } catch {
                print("error")
            }
        }.resume()
        print("Please")
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView()
    }
}
