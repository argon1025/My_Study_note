//
//  UserData.swift
//  HelloSwiftUI
//
//  Created by 이성록 on 2020/08/07.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import Foundation
//import Combine


final class UserData: ObservableObject  {
    
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData

}
