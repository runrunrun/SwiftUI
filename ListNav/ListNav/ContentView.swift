//
//  ContentView.swift
//  ListNav
//
//  Created by Kunwar, Hari on 12/5/19.
//  Copyright © 2019 Kunwar, Hari. All rights reserved.
//

import Combine
import SwiftUI

class DataSource: ObservableObject {
    @Published var pictures = [String]()

    init() {
        let fm = FileManager.default
        guard let path = Bundle.main.resourcePath,
            let items = try? fm.contentsOfDirectory(atPath: path) else {
            return
        }

        for item in items {
            if item.hasPrefix("manu") {
                pictures.append(item)
            }
        }
    }
}

struct ContentView: View {
    @ObservedObject var dataSource = DataSource()

    var body: some View {
        NavigationView {
            List(dataSource.pictures, id: \.self) { picture in
              Text(picture)
            }.navigationBarTitle(Text("Machester United Players"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
