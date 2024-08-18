//
//  ContentView.swift
//  Hiking
//
//  Created by Sarvesh Doshi on 18/08/24.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = [
        Hike(name: "Salmonberry Trail", photo: "sal", miles: 6),
        Hike(name: "Tom, Dick, and Harry Mountain", photo: "tom", miles: 5.8),
        Hike(name: "Tamanawas Falls", photo: "tam", miles: 5)
    ]
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeListView(hike: hike)
                }
            }
            .navigationTitle("Hikes")
            .navigationDestination(for: Hike.self) { hike in
                Text(hike.name)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct HikeListView: View {
    
    let hike: Hike
    
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                .frame(width: 120)
            
            VStack(alignment: .leading, spacing: 12) {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
