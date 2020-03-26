//
//  PlayerDetailView.swift
//  ListNav
//
//  Created by Kunwar on 3/25/20.
//  Copyright © 2020 Kunwar, Hari. All rights reserved.
//

import SwiftUI

struct PlayerDetailView: View {
    let player: Player
    
    var body: some View {
        VStack {
            Image(uiImage: player.image ?? UIImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .navigationBarTitle(Text(player.name.capitalized), displayMode: .inline)
    }
}

struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetailView(player: DataSource().players.first!)
    }
}
