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
            VStack(alignment: .leading) {
                Text(landmark.name)
                Text(landmark.park)
                    .font(.subheadline)
            }
            Spacer()
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
