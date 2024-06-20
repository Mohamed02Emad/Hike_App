//
//  CustomListRow.swift
//  Hike_App
//
//  Created by Mohamed Emad on 20/06/2024.
//

import SwiftUI

struct CustomListRow: View {
    
    @State var label : String
    @State var value : String
    @State var icon : String
    @State var website : String? = nil
    @State var isWebsite : Bool = false
    @State var iconBackgroundColor : Color
    
    var body: some View {
        LabeledContent{
            if isWebsite{
                Link(value , destination: URL(string: website!)!)
            }else{
                Text(value)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30 , height: 30)
                        .foregroundColor(iconBackgroundColor)
                    
                    Image(systemName: icon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(label)
            }
        }
    }
}

#Preview {
    List(0 ..< 3) { item in
        CustomListRow(label: "Application", value: "App", icon: "apps.iphone", iconBackgroundColor: .blue)
    }
}
