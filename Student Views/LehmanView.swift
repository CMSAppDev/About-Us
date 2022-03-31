//
//  LehmanView.swift
//  About Us
//
//  Created by Daniel Jaye Poe (Student) on 3/28/22.
//

import SwiftUI
import AVKit
var name: Int = 1

class PlayViewModel{
    //private var name: Int = 1
    private var audioPlayer: AVAudioPlayer!
    func play(){
        let sound = Bundle.main.path(forResource: String(name) , ofType: ".m4a")
        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        self.audioPlayer.play()
    }
}

struct LehmanView: View {
    
    let vm = PlayViewModel()
    var body: some View {
        VStack{
        Text("Hello, World!  This is Hans Lehman")
        Text("Press on the image for some words of wisdom.")
            Button
            {
                name = Int.random(in: 1...4)
                self.vm.play()
                
             //Image("Lehman").resizable().scaledToFit() as! PrimitiveButtonStyleConfiguration
            } label: {
                Image("Lehman").resizable().scaledToFit()
            }
        //Image("Lehman").resizable().scaledToFit()
        }
    }
}

struct LehmanView_Previews: PreviewProvider {
    static var previews: some View {
        LehmanView()
    }
}
