//
//  AboutMonsterView.swift
//  Lesson1
//
//  Created by Полина on 29.11.2019.
//  Copyright © 2019 Станислав Белых. All rights reserved.
//

import SwiftUI

struct AboutMonsterView: View {
    @State private var showedModalView: Bool = false
    
    var body: some View {
        Button(action: {self.showedModalView = true}) {
            Text("AboutView Page")
        }
        .betterSheet(isPresented: self.$showedModalView, onDismiss: {print("Modal showed")}) {
            ModalAboutMonsterView()
        }
        
    }
}

struct  ModalView: View {
    var body: some View{
        Text("MONSTER")
    }
}
struct AboutMonsterView_Previews: PreviewProvider {
    static var previews: some View {
        AboutMonsterView()
    }
}
