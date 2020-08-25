//
//  CircleImage.swift
//  swiftUI Test
//
//  Created by Ben Liu on 26/8/20.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("test1")
            .frame(width: 250.0, height: 250.0)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
