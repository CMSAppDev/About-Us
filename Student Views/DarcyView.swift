//
//  DarcyView.swift
//  About Us
//
//  Created by Daniel Jaye Poe (Student) on 3/25/22.
//

import SwiftUI
import Subsonic

struct DarcyView: View {
    var body: some View {
        VStack{
            Button {
                play(sound: "bruh sound effect.mp3")
            }  label:  {
                Image("swagAlert")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal)
                }
                
        Text("what was i supposed to do here")
    }
}
}

struct DarcyView_Previews: PreviewProvider {
    static var previews: some View {
        DarcyView()
    }
}
