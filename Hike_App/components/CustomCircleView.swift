//
//  CustomCircleView.swift
//  Hike_App
//
//  Created by Mohamed Emad on 01/12/2023.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimateGradient = false
    
    var body: some View {
        ZStack{
            //Mark: -> circle
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .ColorIndigoMedium,
                            .colorLight,
                        ],
                        startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear{
                    withAnimation(
                        .linear(duration: 3.0)
                        .repeatForever(autoreverses: true)
                    ){
                        isAnimateGradient.toggle()
                    }
                }
            
            //MARK: -> animation Circles
            MotionAnimationView()
              
        }
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    CustomCircleView()
}
