//
//  ContentView.swift
//  FetchApiJSON
//
//  Created by MAB on 22/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var fetch = ApiServices()
    
    var body: some View {
        List(fetch.post) { post in
            VStack(alignment:.leading){
                Text(post.tittle).font(.system(size: 20, weight: .bold, design: .rounded))
                Text(post.body).font(.system(size: 16, weight: .light, design: .rounded))
                Button(action:{print("Klik id ke \(post.id)")}){
                    Text("Klik Saya")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
