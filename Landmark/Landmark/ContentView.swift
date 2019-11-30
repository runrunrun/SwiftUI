//
//  ContentView.swift
//  Landmark
//
//  Created by Kunwar, Hari on 11/30/19.
//  Copyright © 2019 Kunwar, Hari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                  .font(.title)
                HStack {
                  Text("Joshua Tree National Park")
                    .font(.subheadline)
                  Spacer()
                  Text("California")
                    .font(.subheadline)
                }
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
