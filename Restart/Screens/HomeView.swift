//
//  HomeView.swift
//  Restart
//
//  Created by Rin on 2021/12/02.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onborading") var isOnboradingViewAvtive: Bool = false
    @State private var isAnimationg: Bool = false
    var body: some View {
        VStack(spacing: 20) {

            Spacer()

            ZStack {

                CircleGroupView(ShapeColor:  .gray, ShapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
                .offset(y: isAnimationg ? 35 : -35)
                .animation(Animation
                            .easeInOut(duration: 4)
                            .repeatForever()
                           , value: isAnimationg
                           )
            }

            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()

            Spacer()

            Button {
                withAnimation {
                    playSound(sound: "success", type: "m4a")
                    isOnboradingViewAvtive = true
                }
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("ReStart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                isAnimationg = true
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
