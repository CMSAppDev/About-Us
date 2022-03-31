//
//  RowanView.swift
//  About Us
//
//  Created by Daniel Jaye Poe (Student) on 3/25/22.
//

import SwiftUI
import AVKit

struct RowanView: View {
    @State var presentPopup = false
    var body: some View {
        
        //build view here
        ZStack {
            Color(.black)
            Image("RowanAkiraImage")
                .resizable()
                .scaledToFit()
            ScrollView {
                HStack {
                    Image("RowanMonkeyImage")
                        .resizable()
                        .frame(width: 250, height: 353.25)
                        .cornerRadius(.infinity)
                        .padding()
                    Image("RowanMonkeyImage2")
                        .resizable()
                        .frame(width: 450, height: 299.75)
                        .cornerRadius(.infinity)
                        .padding()
                }
                HStack {
                    Text("OO OO")
                        .foregroundColor(.white)
                        .font(.bold(.largeTitle)())
                        .padding()
                        .padding()
                        .padding()
                        .padding()
                    Text("AA AA")
                        .foregroundColor(.white)
                        .font(.bold(.largeTitle)())
                        .padding()
                        .padding()
                        .padding()
                        .padding()
                }
                Text("Rowan's Page")
                    .foregroundColor(.white)
                    .font(.bold(.largeTitle)())
                    .padding()
                    .padding()
                ZStack {
                    Color(red: 51/255, green: 51/255, blue: 51/255)
                        
                        HStack {
                            Text("Press this Button ->")
                                .foregroundColor(.white)
                                .font(.bold(.largeTitle)())
                                .padding()
                            Link("Play Music", destination: URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")!)
                                .font(.bold(.largeTitle)())
                                .padding()
                                .foregroundColor(.blue)
                                .background(Color.black)
                                .cornerRadius(.infinity)
                        }
                    
                }
                .frame(width: 700, height: 150)
                .cornerRadius(.infinity)
                
                VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "RowanVideo", withExtension: ".MOV")!))
                    .frame(width: 800, height: 450)
                
                ZStack {
                    Color(red: 51/255, green: 51/255, blue: 51/255)
                        
                    VStack {
                        Text("^")
                            .foregroundColor(.white)
                            .font(.bold(.largeTitle)())
                        Text("Play this Video")
                            .foregroundColor(.white)
                            .font(.bold(.largeTitle)())
                    }
                }
                .frame(width: 400, height: 140)
                .cornerRadius(.infinity)
                
                ZStack {
                    Color(red: 51/255, green: 51/255, blue: 51/255)
                    
                     Button("Press Me") {
                       presentPopup = true
                     }
                     .foregroundColor(.white)
                     .font(.largeTitle)
                     .padding()
                     .background(Color(.black))
                     .cornerRadius(.infinity)
                     .popover(isPresented: $presentPopup, arrowEdge: .bottom) {
                         Text("lol")
                             .foregroundColor(.black)
                             .font(.bold(.largeTitle)())
                     }
                     
                }
                .frame(width: 300, height: 125)
                .cornerRadius(.infinity)
            }
        }
    }
}

struct RowanView_Previews: PreviewProvider {
    static var previews: some View {
        RowanView()
    }
}
