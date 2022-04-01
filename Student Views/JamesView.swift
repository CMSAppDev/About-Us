//
//  JamesView.swift
//  About Us
//
//  Created by Daniel Jaye Poe (Student) on 3/25/22.
//

import SwiftUI

struct JamesView: View {
    var body: some View {
        VStack{
        Text("I'm dieing inside <3")
            Image("Chasity")
                .renderingMode(.original)
                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                .aspectRatio(contentMode: .fit)
                
        }
    }
}

struct JamesView_Previews: PreviewProvider {
    static var previews: some View {
        JamesView()
    }
}
