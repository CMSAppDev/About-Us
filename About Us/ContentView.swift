//
//  ContentView.swift
//  About Us
//
//  Created by Daniel Jaye Poe (Student) on 3/25/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Group {
                    NavigationLink(destination: PasqualeView()) {
                        Text("Pasquale")
                    }
                    NavigationLink(destination: GrantView()) {
                        Text("Grant")
                    }
                    NavigationLink(destination: AlexanderView()) {
                        Text("Alexander")
                    }
                    NavigationLink(destination: RowanView()) {
                        Text("Rowan")
                    }
                    NavigationLink(destination: JamesView()) {
                        Text("James")
                    }
                    NavigationLink(destination: NoahView()) {
                        Text("Noah")
                    }
                }
                Group {
                    NavigationLink(destination: DanielView()) {
                        Text("Daniel")
                    }
                    NavigationLink(destination: DarcyView()) {
                        Text("Darcy")
                    }
                    NavigationLink(destination: AllisonView()) {
                        Text("Allison")
                    }
                    NavigationLink(destination: AustinView()) {
                        Text("Austin")
                    }
                    NavigationLink(destination: EllaView()) {
                        Text("Ella")
                    }
                    NavigationLink(destination: NoahView()) {
                        Text("Augustus Caesar")
                    }
                    Text("Augustus Caesar")
                }
                
            }
            .navigationBarTitle("About Us", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
