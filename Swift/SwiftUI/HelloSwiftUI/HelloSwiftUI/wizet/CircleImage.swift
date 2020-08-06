//
//  CircleImage.swift
//  HelloSwiftUI
//
//  Created by 이성록 on 2020/08/06.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("flower")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
