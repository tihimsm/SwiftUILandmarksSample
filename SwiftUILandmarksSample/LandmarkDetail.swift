//
//  LandmarkDetail.swift
//  SwiftUILandmarksSample
//
//  Created by taiheimishima on 2019/06/05.
//  Copyright © 2019 tihimsm. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    var landmark: Landmark
    let positionY: CGFloat = -130
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage(image: landmark.image(forSize: 250))
                .offset(y: positionY)
                .padding(.bottom, positionY)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
            .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
#endif
