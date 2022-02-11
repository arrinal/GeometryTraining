//
//  Home.swift
//  Motorental
//
//  Created by Arrinal Sholifadliq on 22/09/21.
//

import SwiftUI

struct Home: View {
    
    @State var top = UIApplication.shared.windows.first?.safeAreaInsets.top
    @State var current = "house.fill"
    @Namespace var animation
    
    @State var isHidden = false
    
    var body: some View {
        VStack(spacing: 0) {
            
            //App Bar
            VStack(spacing: 22) {
                
                //Hiding by geometry
                if !isHidden {
                    HStack(spacing: 12) {
                        Text("facebook")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                        
                        Spacer(minLength: 0)
                        
                        Button {
                            //
                        } label: {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.black)
                                .padding(10)
                                .background(Color.black.opacity(0.1))
                                .clipShape(Circle())
                            
                        }
                        
                        Button {
                            //
                        } label: {
                            Image(systemName: "message.fill")
                                .foregroundColor(.black)
                                .padding(10)
                                .background(Color.black.opacity(0.1))
                                .clipShape(Circle())
                            
                        }
                        
                    }
                    .padding(.horizontal)
                }
                
                //Custom Tab Bar
                HStack(spacing: 0) {
                    TabBarButton(current: $current, image: "house.fill", animation: animation)
                    TabBarButton(current: $current, image: "magnifyingglass", animation: animation)
                    TabBarButton(current: $current, image: "person.2.fill", animation: animation)
                    TabBarButton(current: $current, image: "tv.fill", animation: animation)
                }
            }
            //            .padding(.horizontal)
            .padding(.top, top)
            .background(Color.white)
            
            //Content
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 0) {
                    
                    // geometry reader for getting location values
                    
                    GeometryReader { reader -> AnyView in
                        
                        let yAxis = reader.frame(in: .global).minY
                        
                        print(yAxis)
                        
                        if yAxis < 0 && !isHidden {
                            DispatchQueue.main.async {
                                withAnimation { isHidden = true }
                            }
                        } else if yAxis > 0 && isHidden {
                            DispatchQueue.main.async {
                                withAnimation { isHidden = false }
                            }
                        }
                        
                        return AnyView(
                            Text("")
                                .frame(width: 0, height: 0)
                        )
                    }
                    
                    VStack(spacing: 15) {
                        ForEach(1...20, id: \.self) { i in
                            VStack(spacing: 10) {
                                HStack(spacing: 10) {
                                    Image("logo")
                                        .resizable()
                                        .frame(width: 35, height: 35)
                                        .clipShape(Circle())
                                    
                                    VStack(alignment: .leading, spacing: 4) {
                                        Text("Arrinal")
                                            .font(.title2)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                        
                                        Text("\(45 - i) min")
                                    }
                                    Spacer(minLength: 0)
                                }
                                
                                Text("Lorem ipsum is sumply dummy text")
                            }
                            .padding()
                            .background(Color.white)
                        }
                    }
                    
                }
                .padding(.top)
            }
        }
        .background(Color.black.opacity(0.07))
        .ignoresSafeArea()
        .onAppear {
            print("cok")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
