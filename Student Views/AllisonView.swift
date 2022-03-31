//
//  AllisonView.swift
//  About Us
//
//  Created by Daniel Jaye Poe (Student) on 3/25/22.
//

import SwiftUI

struct AllisonView: View {
    var body: some View {
   
        VStack{
            Text("notes for archeology bc I have an exam :)").font(.system(size:30))
                .padding()
            
            Text("Assyrians").font(.system(size:25))
                .padding()
            
            HStack{
                
                VStack{
                    Text("Assyria - 2000-612 BC").font(.system(size:20))
                    Text("Old - 1900-1400 BC")
                    Text("Capital: Ashur").font(.system(size:15))
                    Text("Middle - 1400-934 BC")
                    Text("Capital: Ashur").font(.system(size:15))
                    Text("Late - 911-605 BC")
                    Text("Capitals: Nimrud, Khorsad, Nineveh").font(.system(size:15))
                    }
                
                }
            Image("Assyria")
                .resizable()
                .frame(width: 250, height: 200)
            }
            
        }
    }





struct AllisonView_Previews: PreviewProvider {
    static var previews: some View {
        AllisonView()
            .preferredColorScheme(.dark)
    }
}
