//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이성록 on 2020/08/06.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage().frame(height:200)
            .offset(y: -130)
            .padding(.bottom, -170)
            VStack(alignment: .leading, spacing: 0.0) {
                HStack {
                    Text("Turtle Rock")
                        .font(.title)
                }
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Text("California")
                        .font(.subheadline)
                }
            }.padding()
            Spacer()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
