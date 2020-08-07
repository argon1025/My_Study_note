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
                    Text(landmark.name)
                        .font(.title)
                }
                HStack {
                    Text(landmark.state)
                        .font(.subheadline)
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
    }
}
