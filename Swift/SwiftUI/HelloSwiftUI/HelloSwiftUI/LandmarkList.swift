//
//  LandmarkList.swift
//  HelloSwiftUI
//
//  Created by 이성록 on 2020/08/06.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @State var showFavoritesOnly = false
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(landmarkData) { landmark in
                    if !self.showFavoritesOnly || landmark.isFavorite ?? false {
                    NavigationLink(destination: ContentView(landmark: landmark)){
                        LandmarkRow(landmark: landmark)
                    }
                }
                }
            }
            .navigationBarTitle(Text("관광명소"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        //, "iPhone XS Max","iPad Pro (10.5-inch)"
        ForEach(["iPhone SE"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
