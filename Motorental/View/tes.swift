//
//  tes.swift
//  Motorental
//
//  Created by Arrinal Sholifadliq on 04/01/22.
//

import SwiftUI

struct tes: View {
    var body: some View {
        ZStack {
            Button(action: {}){
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(25)
                            .foregroundColor(Color(red: 52/255, green: 57/255, blue: 133/255))
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color(red: 236/255, green: 234/255, blue: 235/255),
                                            lineWidth: 4)
                                    .shadow(color: Color(red: 192/255, green: 189/255, blue: 191/255),
                                            radius: 3, x: 5, y: 5)
                                    .clipShape(
                                        RoundedRectangle(cornerRadius: 15)
                                    )
                                    .shadow(color: Color.white, radius: 2, x: -2, y: -2)
//                                    .clipShape(
//                                        RoundedRectangle(cornerRadius: 15)
//                                    )
                            )
                            .background(Color(red: 236/255, green: 234/255, blue: 235/255))
                            .cornerRadius(20)
            }
        }
    }
}

struct tes_Previews: PreviewProvider {
    static var previews: some View {
        tes()
    }
}
