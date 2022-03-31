//
//  GrantView.swift
//  About Us
//
//  Created by Daniel Jaye Poe (Student) on 3/25/22.
//

import SwiftUI

struct GrantView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                   Text("The source texts mention numerous gods, such as the hammer-wielding, humanity-protecting thunder-god Thor, who relentlessly fights his foes; the one-eyed, raven-flanked god Odin, who craftily pursues knowledge throughout the worlds and bestowed among humanity the runic alphabet; the beautiful, seiðr-working, feathered cloak-clad goddess Freyja who rides to battle to choose among the slain; the vengeful, skiing goddess Skaði, who prefers the wolf howls of the winter mountains to the seashore; the powerful god Njörðr, who may calm both sea and fire and grant wealth and land; the god Freyr, whose weather and farming associations bring peace and pleasure to humanity; the goddess Iðunn, who keeps apples that grant eternal youthfulness; the mysterious god Heimdallr, who is born of nine mothers, can hear grass grow, has gold teeth, and possesses a resounding horn; the jötunn's son, the god Loki, who brings tragedy to the gods by engineering the death of the goddess Frigg's beautiful son Baldr; and numerous other deities.").font(.system(size:10))
                Image("grantodin")
                    .resizable()
                    .frame(width: 150, height: 300)
                }
            HStack{
                Image("granttree")
                Spacer()
            Text("The god Odin is also frequently mentioned in surviving texts. One-eyed, wolf- and raven-flanked, with spear in hand, Odin pursues knowledge throughout the worlds. In an act of self-sacrifice, Odin is described as having hanged himself upside-down for nine days and nights on the cosmological tree Yggdrasil to gain knowledge of the runic alphabet, which he passed on to humanity, and is associated closely with death, wisdom, and poetry. Odin is portrayed as the ruler of Asgard, and leader of the Aesir. Odin's wife is the powerful goddess Frigg who can see the future but tells no one, and together they have a beloved son, Baldr. After a series of dreams had by Baldr of his impending death, his death is engineered by Loki, and Baldr thereafter resides in Hel, a realm ruled over by an entity of the same name.").font(.system(size:10))
            }
        }
    }
}

struct GrantView_Previews: PreviewProvider {
    static var previews: some View {
        GrantView()
    }
}
