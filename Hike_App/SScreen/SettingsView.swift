//
//  SettingsView.swift
//  Hike_App
//
//  Created by Mohamed Emad on 20/06/2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
            // MARK: - Section Header
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading").font(.system(size: 80 , weight: .black))
                    VStack(spacing : -10) {
                        Text("Hike").font(.system(size: 66 , weight: .black))
                        Text("New text").fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing").font(.system(size: 80 , weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [.ColorGreenLight , .ColorGreenMedium , .ColorGreenDark], startPoint: .top, endPoint: .bottom)
                ).padding(.top,8)
                
                VStack(spacing: 8){
                    Text("Where can you find\nperfect tracks?")
                        .fontWeight(.heavy)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    Text("The hike which looks gorgeousin photos but is even better once you are actually there. the hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .italic()
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                        .padding(.bottom , 16)
                    
                    Text("Dust on the boots! it's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.ColorGreenMedium)
                        .multilineTextAlignment(.center)
                    
                }
                .listRowSeparator(.hidden)
                .frame(maxWidth: .infinity)
            }
        
            // MARK: - Section Icons
            // MARK: - Section About
        }
    }
}

#Preview {
    SettingsView()
}
