//
//  ContentView.swift
//  Lesson1
//
//  Created by Полина on 29.11.2019.
//  Copyright © 2019 Станислав Белых. All rights reserved.
//

import SwiftUI

struct RootView: View {
    
    @State private var selection = 0
    @State var selectedView = 1
    
    var body: some View {
        TabView(selection: $selectedView) {
            Button(action: {self.selectedView = 1}){
                Text("The First Tab")}
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Start")
                }
                .tag(0)
            
                MonsterListView()
                .tabItem {
                    Image(systemName: "bolt.circle")
                    Text("Monster List")
                }
                .tag(1)
        
                AboutMonsterView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("About")
                        }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
