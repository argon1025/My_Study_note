//
//  LandmarkRow.swift
//  HelloSwiftUI
//
//  Created by 이성록 on 2020/08/06.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 3)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.headline)
                Text(landmark.park)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
            Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .padding(.trailing, 10.0)
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }.previewLayout(.fixed(width: 400, height: 70))
        //LandmarkRow()
    }
}
