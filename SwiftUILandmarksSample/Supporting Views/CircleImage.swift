//
//  CircleImage.swift
//  SwiftUILandmarksSample
//
//  Created by taiheimishima on 2019/06/08.
//  Copyright © 2019 tihimsm. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("tutlerock"))
    }
}
#endif
