//
//  NoahView.swift
//  About Us
//
//  Created by Daniel Jaye Poe (Student) on 3/25/22.
//

import SwiftUI

struct NoahView: View {
    @State var onInit = false
    @State var opacity = 0.0
    init(){
        
        
    }
    var body: some View {
        VStack{
            
            Spacer()
            Text("Noah M").padding()
            Text("Im a programmer and game developer, I also like making blender animations. I love learning new things and exploring new opportunities.").padding()
            Text("This is in the Noah View").padding()
            Spacer()
            Button("Big Secret"){
                withAnimation(.linear(duration: 100.0)) {
                    opacity += 100.0
                }
            }.padding()
            Image("debian")
                .opacity(opacity)
            Text("Im sorry... Debian is just better.")
                .opacity(opacity)
            Spacer()
        }
    }
}

struct NoahView_Previews: PreviewProvider {
    static var previews: some View {
        NoahView()
    }
}
