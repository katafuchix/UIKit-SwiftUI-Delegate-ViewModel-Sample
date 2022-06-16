//
//  ViewModel.swift
//  UIKit-SwiftUI-Delegate-ViewModel-Sample
//
//  Created by cano on 2022/06/17.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {

    @Published var count: Int = 0

    func increment() {
        count += 1
    }

}
