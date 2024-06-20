//
//  CardView.swift
//  Hike_App
//
//  Created by Mohamed Emad on 28/11/2023.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNaumber : Int = 1
    @State private var randomNumber : Int = 1
    @State private var isShowingSheet : Bool = false
    
    // MARK: - functions
    
    func randomImage(){
        randomNumber = Int.random(in: 1...5)
        if(randomNumber != imageNaumber){
            imageNaumber = randomNumber
        }else{
            randomImage()
        }
    }
    
    func getNextImage(){
        if(imageNaumber == 5){
            imageNaumber = 1
        }else{
            imageNaumber = imageNaumber+1
        }
    }
    
    var body: some View {
        
        //MARK: - Main Section
        
        ZStack{
            CustomBackGroundView()
            VStack {
                // MARK: - Card Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [Color.CustomGreyLight,
                                                        Color.CustomGreyMedium,
                                                       ],
                                               startPoint:.top , endPoint: .bottom)
                            )
                        
                        Spacer()
                        
                        Button{
                            isShowingSheet.toggle()
                        }label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented : $isShowingSheet){
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium , .large])
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .italic()
                        .foregroundColor(.CustomGreyMedium)
                }.padding(.horizontal, 30)
                // MARK: - Circl Image
                ZStack{
                    CustomCircleView()
                    let padding = 10.0
                    Image("image-\(imageNaumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 1), value: imageNaumber)
                        .padding(EdgeInsets(top: padding, leading: padding, bottom: padding, trailing: padding))
                }
                // MARK: - Button
                Button{
//                    randomImage()
                    getNextImage()
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [
                            .colorGreenLight,
                            .colorGreenMedium,
                        ], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25 , x: 1 , y: 2)
                }.buttonStyle(GradientButton())
                

                 
                
            }
        }.frame(width: 320 , height: 570)
        
    }
}

#Preview {
    CardView()  .modelContainer(for: Item.self, inMemory: true)
}
