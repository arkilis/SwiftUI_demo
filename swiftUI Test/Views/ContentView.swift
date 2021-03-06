//
//  ContentView.swift
//  swiftUI Test
//
//  Created by Ben Liu on 26/8/20.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage().offset(x: 0, y: -130).padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Hello, world 2!")
                    .multilineTextAlignment(.leading)
                    .font(.title)
                    
                HStack(alignment: .top) {
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                    Spacer()
                    Text("location name")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
