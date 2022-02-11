//
//  TabBarButton.swift
//  Motorental
//
//  Created by Arrinal Sholifadliq on 22/09/21.
//

import SwiftUI

struct TabBarButton: View {
    
    @Binding var current: String
    var image: String
    var animation: Namespace.ID
    
    var body: some View {
        
        Button {
            withAnimation { current = image }
        } label: {
            VStack(spacing: 5) {
                Image(systemName: image)
                    .font(.title2)
                    .foregroundColor(current == image ? .blue : Color.black.opacity(0.3))
                //default frame to avoid resizing
                    .frame(height: 35)
                
                ZStack {
                    Rectangle()
                        .fill(Color.clear)
                        .frame(height: 4)
                    
                    //matched geometry effect slide animation.
                    
                    if current == image {
                        Rectangle()
                            .fill(Color(.blue))
                            .frame(height: 4)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                }
            }
        }

        
    }
}

//struct TabBarButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBarButton()
//    }
//}
