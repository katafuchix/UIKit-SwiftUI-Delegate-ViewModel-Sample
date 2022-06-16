//
//  ContentView.swift
//  UIKit-SwiftUI-Delegate-ViewModel-Sample
//
//  Created by cano on 2022/06/17.
//

import SwiftUI

protocol ContentViewDelegate {
    func didTapAdd()
}

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel = ViewModel()
    
    var delegate: ContentViewDelegate?
    
    var body: some View {
        VStack(spacing: 16) {
            Text("count : \(self.viewModel.count)")
            
            Button("Add") {
                print("did tap.")
                self.delegate?.didTapAdd()
            }
            .padding(8)
            .cornerRadius(4)
            .overlay(
                RoundedRectangle(cornerRadius: 2)
                .stroke(Color.blue, lineWidth: 2)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
