//
//  CircleGroupView.swift
//  Restart
//
//  Created by Rin on 2021/12/02.
//

import SwiftUI

struct CircleGroupView: View {
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    @State private var isAnimationg: Bool = false

    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
        .blur(radius: isAnimationg ? 0 : 10)
        .opacity(isAnimationg ? 1 : 0)
        .scaleEffect(isAnimationg ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimationg)
        .onAppear {
            isAnimationg = true
        }
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
            CircleGroupView(ShapeColor: Color("ColorRed"), ShapeOpacity: 0.2)
        }
    }
}
