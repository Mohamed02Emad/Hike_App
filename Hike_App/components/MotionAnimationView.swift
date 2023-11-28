//
//  MotionAnimationView.swift
//  Hike_App
//
//  Created by Mohamed Emad on 01/12/2023.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle = Int.random(in: 6...12)
    @State private var isAnimating : Bool = false
    
    //MARK: - functions
    
    //MARK: - random coordinates
    
    func randomCoordinate() -> CGFloat{
        return CGFloat(Int.random(in: -100 ... 256))
    }
    
    //MARK: - random size
    
    func randomSize()->CGFloat{
        return CGFloat(Int.random(in: 4 ... 80))
    }
    
    //MARK: - random scale
    
    func randomScale()->CGFloat{
        return CGFloat(Double.random(in: 0.1 ... 2.0))
    }
    
    //MARK: - random speed
    
    func randomSpeed()->Double{
        return Double.random(in: 0.05 ... 0.7)
    }
    
    //MARK: - random delay
    
    func randomDelay() -> Double{
        return Double.random(in: 0 ... 1.5)
    }
    
    var body: some View {
            ForEach(0 ... randomCircle ,id: \.self ){ item in
                    Circle()
                        .foregroundColor(.white)
                        .opacity(0.25)
                        .position(x: randomCoordinate() , y: randomCoordinate())
                        .scaleEffect(
                            isAnimating ? randomScale() : 1
                        )
                        .onAppear(
                            perform: {
                                withAnimation(
                                    .interpolatingSpring(stiffness: 0.25, damping: 0.5)
                                    .repeatForever()
                                    .speed(randomSpeed())
                                    .delay(randomDelay())
                                ){
                                    isAnimating.toggle()
                                }
                            })
                        .frame(width: randomSize())
                }
    }
}

#Preview {
        MotionAnimationView()
}
