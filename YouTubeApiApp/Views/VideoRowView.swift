//
//  VideoRowView.swift
//  YouTubeApiApp
//
//  Created by Zeynep Cankaya on 9.08.2024.
//

import SwiftUI

struct VideoRowView: View {
    var video : Video
    
    var body: some View {
        VStack (alignment: .leading){
            if let url = URL(string: video.snippet?.thumbnails?.medium.url ?? "") {
                
                AsyncImage(url: url) { image in
                    //Image that is displayed
                    image
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .clipShape(RoundedRectangle(cornerRadius: 5.0))
                }
            placeholder: {
                ProgressView()
            }
        }
            Text(video.snippet?.title ?? "")
                .bold()
    }
        .padding(.vertical)
    }
}

