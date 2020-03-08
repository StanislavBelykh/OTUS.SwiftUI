//
//  ModalAboutMonsterView.swift
//  Lesson1
//
//  Created by Полина on 30.11.2019.
//  Copyright © 2019 Станислав Белых. All rights reserved.
//

import SwiftUI

struct ModalAboutMonsterView: View {
    
    @ObservedObject var viewModel = ListMonsterModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ModalAboutMonsterView_Previews: PreviewProvider {
    static var previews: some View {
        ModalAboutMonsterView()
    }
}
