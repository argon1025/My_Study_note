//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이성록 on 2020/08/06.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var landmark: Landmark
    @EnvironmentObject var userData: UserData
    var landmarkIndex: Int {
        return userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage(image: landmark.image).frame(height:200)
            .offset(y: -150)
            .padding(.bottom, -170)
            VStack(alignment: .leading, spacing: 0.0) {
                HStack {
                    Button(action: {self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()}) {
                        if userData.landmarks[landmarkIndex].isFavorite {
                            Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                        }else{
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.gray)
                        }
                    }
                    Text(landmark.name)
                        .font(.title)
                    Text(landmark.state)
                        .font(.subheadline)
                }
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                }
            }.padding()
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarkData[0])
        .environmentObject(UserData())
    }
}
