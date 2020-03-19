//
//  DataSource.swift
//  ListNav
//
//  Created by Kunwar on 3/19/20.
//  Copyright © 2020 Kunwar, Hari. All rights reserved.
//

import UIKit

class DataSource: ObservableObject {
    @Published var players = [Player]()
    private let fileNamePrefix = "manu"

    init() {
        let fm = FileManager.default
        guard let path = Bundle.main.resourcePath,
            let items = try? fm.contentsOfDirectory(atPath: path) else {
            return
        }

        for item in items {
            if item.hasPrefix(fileNamePrefix) {
                let imageURL = URL(fileURLWithPath: path).appendingPathComponent(item)
                let name = fullName(from: item)
                let player = Player(name: name, image: UIImage(contentsOfFile: imageURL.path))
                players.append(player)
            }
        }
    }
    
    private func fullName(from imageName: String) -> String {
        var parts = imageName.split(separator: "_")
        
        // Remove manu prefix
        parts.removeFirst()
        
        // Remove .jpg extension
        let postFix = parts.removeLast()
        let lastName = postFix.split(separator: ".").first ?? ""
        parts.append(lastName)
        
        let name = parts.reduce("", { result, next in
            guard result != fileNamePrefix else {
                return result
            }
            
            return result + " " + next
        })
        
        return name
    }
}
