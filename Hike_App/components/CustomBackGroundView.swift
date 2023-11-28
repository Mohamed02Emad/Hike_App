//
//  CustomBackGroundView.swift
//  Hike_App
//
//  Created by Mohamed Emad on 28/11/2023.
//

import SwiftUI

struct CustomBackGroundView: View {
    var body: some View {
      
          ZStack{
            Color.ColorGreenDark
                .cornerRadius(40)
                .offset(y : 12)
            
              Color.ColorGreenLight
                .cornerRadius(40)
                .offset(y : 3)
                .opacity(0.85)
            
            
            LinearGradient(colors: [
                Color.ColorGreenLight,
                Color.ColorGreenMedium,
            ], startPoint: .top, endPoint: .bottom)
            .cornerRadius(40)
    
        }
    }
}

#Preview {
    CustomBackGroundView()
}
