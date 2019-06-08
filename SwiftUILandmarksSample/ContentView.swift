//
//  ContentView.swift
//  SwiftUILandmarksSample
//
//  Created by taiheimishima on 2019/06/05.
//  Copyright © 2019 tihimsm. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    let positionY: CGFloat = -130
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage()
                .offset(y: positionY)
                .padding(.bottom, positionY)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
