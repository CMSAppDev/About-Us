//
//  EllaView.swift
//  About Us
//
//  Created by Daniel Jaye Poe (Student) on 3/25/22.
//

import SwiftUI

struct EllaView: View {
    var body: some View {
         VStack{
             Text("This is me")
             Text("I look sooooo tired")
            Image("Ella")
                 .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
            
            
            
        }
    }
}

struct EllaView_Previews: PreviewProvider {
    static var previews: some View {
        EllaView()
    }
}
