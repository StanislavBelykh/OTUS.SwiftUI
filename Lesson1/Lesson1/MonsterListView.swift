//
//  MonsterListView.swift
//  Lesson1
//
//  Created by Полина on 29.11.2019.
//  Copyright © 2019 Станислав Белых. All rights reserved.
//

import SwiftUI

struct MonsterListView: View {
    
    @ObservedObject var viewModel = ListMonsterModel()
    
    init(){
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.monsters) { monster in
                    NavigationLink(destination: MonsterView()){
                        Image(uiImage: monster.icon!)
                        .resizable()
                        .frame(width: 95, height: 95)
                        Text(monster.name)
                    }
                }
            }
        .navigationBarTitle("Monsters")
        }
    }
}

struct MonsterListView_Previews: PreviewProvider {
    static var previews: some View {
        MonsterListView()
    }
}
