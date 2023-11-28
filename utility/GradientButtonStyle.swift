//
//  GradientButtonStyle.swift
//  Hike_App
//
//  Created by Mohamed Emad on 01/12/2023.
//

import Foundation
import SwiftUI

struct GradientButton : ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal , 30)
            .background(
                configuration.isPressed ?
                LinearGradient(colors: [
                .CustomGreyLight,
                .CustomGreyMedium,
                ]  , startPoint: .top, endPoint: .bottom)
                :
                 LinearGradient(colors: [
                 .CustomGreyMedium,
                 .CustomGreyLight,
                 ], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
