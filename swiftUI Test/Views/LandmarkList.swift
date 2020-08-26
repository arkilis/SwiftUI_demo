//
//  LandmarkList.swift
//  swiftUI Test
//
//  Created by Ben Liu on 26/8/20.
//

import SwiftUI

struct LandmarkList: View {
    
    @State var showFavoritesOnly = false
    
    var body: some View {
        NavigationView {
            Toggle(isOn: $showFavoritesOnly) {
                Text("Favorites only")
            }
            
            List(landmarkData) { landmark in
                if !self.showFavoritesOnly || landmark.isFavorite {
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
            Spacer()
        }
    }

}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
    }
}
