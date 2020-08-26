//
//  ContentView.swift
//  swiftUI Test
//
//  Created by Ben Liu on 26/8/20.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image).offset(x: 0, y: -130).padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .multilineTextAlignment(.leading)
                    .font(.title)
                    
                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
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
        LandmarkDetail(landmark: landmarkData[0])
    }
}
