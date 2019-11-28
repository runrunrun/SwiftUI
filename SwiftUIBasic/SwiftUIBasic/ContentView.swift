//
//  ContentView.swift
//  SwiftUIBasic
//
//  Created by Kunwar, Hari on 10/22/19.
//  Copyright © 2019 Kunwar, Hari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack(alignment: .leading, spacing: 20) {
        Text("Title")
          .font(.title)
        HStack {
          Text("Description")
            .font(.subheadline)
          Spacer()
          Text("Location")
            .font(.subheadline)
        }
      }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
