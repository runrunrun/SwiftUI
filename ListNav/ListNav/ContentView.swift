//
//  ContentView.swift
//  ListNav
//
//  Created by Kunwar, Hari on 12/5/19.
//  Copyright © 2019 Kunwar, Hari. All rights reserved.
//

import Combine
import SwiftUI

struct ContentView: View {
    @ObservedObject var dataSource = DataSource()

    var body: some View {
        NavigationView {
            List(dataSource.players, id: \.self) { player in
                Image(uiImage: player.image ?? UIImage())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                Text(player.name.capitalized)
            }.navigationBarTitle(Text("Machester United Players"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
