//
//  RotatedBadgeSymbol.swift
//  HelloSwiftUI
//
//  Created by 이성록 on 2020/08/09.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    var body: some View {
        ZStack {
            Badge()
            GeometryReader { geometry in
                BadgeSymbol()
                    .scaleEffect(1.0 / 3.0, anchor: .top)
                    .padding(-60)
                    .rotationEffect(.init(degrees: 0), anchor: .bottom)
                    .opacity(0.9)
                .position(x: geometry.size.width / 2.0, y: (3.9 / 4.0) * geometry.size.height)
            }
        }
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol()
    }
}
