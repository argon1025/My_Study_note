//
//  LandmarkList.swift
//  HelloSwiftUI
//
//  Created by 이성록 on 2020/08/06.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    //@State var showFavoritesOnly = false
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite{
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
                .environmentObject(UserData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
