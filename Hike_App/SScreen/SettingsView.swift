//
//  SettingsView.swift
//  Hike_App
//
//  Created by Mohamed Emad on 20/06/2024.
//

import SwiftUI

struct SettingsView: View {
    
    private let alternativeIcons : [String] = [
    "AppIcon-MagnifyingGlass",
    "AppIcon-Map",
    "AppIcon-Mushroom",
    "AppIcon-Camera",
    "AppIcon-Backpack",
    "AppIcon-Campfire"
    ]
    
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
            Section(header : Text("Alternate Icons")){
                
                ScrollView(.horizontal , showsIndicators : false){
                    HStack(spacing : 12) {
                        ForEach(alternativeIcons.indices , id: \.self) { item in
                            Button{
                                UIApplication.shared.setAlternateIconName(
                                    alternativeIcons[item]
                                ){ error in
                                    if error == nil {
                                        
                                    }
                                }
                            }label: {
                              Image(
                                "\(alternativeIcons[item])-Preview"
                              )
                               .resizable()
                               .scaledToFit()
                               .frame(width: 80 , height: 80)
                               .cornerRadius(16)
                               .buttonStyle(.borderless) // fore some reason it is required so that the button works inside listView
                           }
                        }
                    }
                }
                .padding(.top , 12)
                
                Text("Choose your favourite app icon from the collection above.")
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/ , maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom , 12)
            }
            .listRowSeparator(.hidden)
            // MARK: - Section About
            Section(
                header : Text("About The App"),
                footer: HStack{
                    Spacer()
                    Text("copyright @ All right reserved")
                    Spacer()
                }
                    .padding(.vertical , 8)
            ){
               CustomListRow(
                label: "Application",
                value: "Hike",
                icon: "apps.iphone",
                iconBackgroundColor: .blue
               )
               CustomListRow(
                label: "Compatibility",
                value: "IOS,ipadOS",
                icon: "info.circle",
                iconBackgroundColor: .red
               )
               CustomListRow(
                label: "Technology",
                value: "swift",
                icon: "swift",
                iconBackgroundColor: .orange
               )
               CustomListRow(
                label: "Version",
                value: "1.0",
                icon: "gear",
                iconBackgroundColor: .purple
               )
               CustomListRow(
                label: "Developer",
                value: "Mohamed Emad",
                icon: "ellipsis.curlybraces",
                iconBackgroundColor: .mint
               )
               CustomListRow(
                label: "Website",
                value: "GitHub",
                icon: "globe",
                website: "https://github.com/Mohamed02Emad",
                isWebsite: true,
                iconBackgroundColor: .indigo
               )
            }
        }
    }
}

#Preview {
    SettingsView()
}
