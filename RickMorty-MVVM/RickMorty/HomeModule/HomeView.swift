//
//  HomeView.swift
//  RickMorty
//
//  Created by Kunwar on 12/5/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            TabView {
                CharactersView()
                    .tabItem {
                        Text("Characters")
                    }
                EpisodesView()
                    .tabItem {
                        Text("Episodes")
                    }
                LocationsView()
                    .tabItem {
                        Text("Locations")
                    }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
