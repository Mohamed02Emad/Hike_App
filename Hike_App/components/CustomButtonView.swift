//
//  CustomButtonView.swift
//  Hike_App
//
//  Created by Mohamed Emad on 28/11/2023.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle().fill(
            LinearGradient(colors: [
                .white,
                .ColorGreenLight,
                .ColorGreenMedium
            ], startPoint: .top, endPoint: .bottom)
            )
            
            Circle().stroke(LinearGradient(colors: [
                .CustomGreyLight,
                .CustomGreyMedium
            ], startPoint: .top, endPoint: .bottom) , lineWidth: 4)
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(colors: [
                    .colorGrayLight,
                    .colorGrayMedium,
                ], startPoint: .top, endPoint: .bottom))
        }.frame(width: 58 , height: 58)
    }
}

#Preview {
    CustomButtonView()
}
