//
//  DanielView.swift
//  About Us
//
//  Created by Daniel Jaye Poe (Student) on 3/25/22.
//

import SwiftUI

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(50)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
    
}

struct TitleModifier: ViewModifier {
    let fontSize: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: fontSize, weight: .bold, design: .default))
            .foregroundColor(.white)
    }
    
}

struct DescriptionModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16, weight: .bold, design: .default))
            .foregroundColor(.gray)
    }
    
}

struct YearModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16, weight: .bold, design: .default))
            .foregroundColor(.white)
            .padding(.top,0)
    }
    
}

struct CardView: View {
    
    let image: Image
    let title: String
    let description: String
    let year: String?
    let url: String?
    
    var body: some View {
        if url != nil {
            Link(destination: URL(string: url!)!) {
                HStack(alignment: .center) {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                        .padding(.trailing, 5)
                    
                    VStack(alignment: .leading) {
                        Text(title)
                            .modifier(TitleModifier(fontSize: 26))
                        Text(description)
                            .modifier(DescriptionModifier())
                        if year != nil {
                            Text(year!)
                                .modifier(YearModifier())
                        }
                    }
                    .padding(.trailing, 20)
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color(red: 32/255, green: 36/255, blue: 38/255))
                .modifier(CardModifier())
                .padding(.all, 10)
            }
        } else {
            HStack(alignment: .center) {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .padding(.leading, 5)
                    .cornerRadius(50)
                
                VStack(alignment: .leading) {
                    Text(title)
                        .modifier(TitleModifier(fontSize: 26))
                    Text(description)
                        .modifier(DescriptionModifier())
                    if year != nil {
                        Text(year!)
                            .modifier(YearModifier())
                    }
                }
                .padding(.trailing, 20)
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color(red: 32/255, green: 36/255, blue: 38/255))
            .modifier(CardModifier())
            .padding(.all, 10)
        }
    }
}

struct DanielView: View {
    
    @State private var isShowingPopover: Bool = false
    
    func copyDiscordToClipboard() {
        UIPasteboard.general.string = "D4n#2719"
        isShowingPopover = true
    }
    
    var body: some View {
        
        ZStack {
            Color(red: 51/255, green: 51/255, blue: 51/255)
            
            ScrollView {
                HStack {
                    VStack {
                        Text("Daniel Poe")
                            .modifier(TitleModifier(fontSize: 64))
                        
                        Text("18; he/him; senior")
                            .font(.system(
                                size: 16,
                                weight: .bold,
                                design: .default)
                            )
                            .foregroundColor(.gray)
                    }
                    
                    Image("daniel-portrait")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                        .padding()
                    
                }
                .padding(.top, 20)
                
                Text("Hi, I'm Daniel! Thank you for visiting my page! I am a senior at the Chambersburg Area Career Magnet School. I love software development, 3D printing, music, video games, and anime! Listed below are some of my social media links. Feel free to follow! You can also check out the other tabs at the bottom to see my favorite games, music, and tv/movies. Have a good day!")
                    .modifier(YearModifier())
                    .padding(.horizontal, 175)
                    .padding(.bottom, 50)
                
                Text("links")
                    .modifier(TitleModifier(fontSize: 26))
                
                CardView(image: Image("daniel-instagram"), title: "instagram", description: "@thed4nm4n", year: nil, url: "https://instagram.com/thed4nm4n")
                
                CardView(image: Image("daniel-twitter"), title: "twitter", description: "@the_d4n_m4n", year: nil, url: "https://twitter.com/the_d4n_m4n")
                
                Button(action: copyDiscordToClipboard) {
                CardView(image: Image("daniel-discord"), title: "discord", description: "D4n#2719", year: nil, url: nil)
                }
                .popover(isPresented: $isShowingPopover) {
                    Text("copied to clipboard!")
                }
                
                CardView(image: Image("daniel-youtube"), title: "youtube", description: "Daniel Poe", year: nil, url: "https://www.youtube.com/channel/UCgVgxSEy4pOR7LFT6nPexOg")
            }
        }
    }
    
}

struct DanielView_Previews: PreviewProvider {
    static var previews: some View {
        DanielView()
            .previewDevice("iPad (9th generation)")
    }
}
