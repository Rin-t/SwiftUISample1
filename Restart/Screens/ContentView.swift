//
//  ContentView.swift
//  Restart
//
//  Created by Rin on 2021/12/01.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onborading") var isOnborading: Bool = true
    var body: some View {
        ZStack {
            if isOnborading {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
