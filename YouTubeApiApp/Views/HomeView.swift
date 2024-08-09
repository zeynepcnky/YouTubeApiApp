//
//  HomeView.swift
//  YouTubeApiApp
//
//  Created by Zeynep Cankaya on 9.08.2024.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "play.square.stack")
                    Text("Feed")
                }
        }
     
        .ignoresSafeArea()
       
        
    }
}
    #Preview {
        HomeView()
    }

