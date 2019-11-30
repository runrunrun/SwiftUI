//
//  CircleImage.swift
//  Landmark
//
//  Created by Kunwar, Hari on 11/30/19.
//  Copyright © 2019 Kunwar, Hari. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtleRock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
