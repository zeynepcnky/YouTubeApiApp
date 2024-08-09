//
//  VideoDetailView.swift
//  YouTubeApiApp
//
//  Created by Zeynep Cankaya on 9.08.2024.
//

import SwiftUI
import YouTubePlayerKit

struct VideoDetailView: View {
    
    var video: Video
    
    var body: some View {
        
        GeometryReader{ proxy in
            
            VStack (alignment: .leading) {
                
                //Video player config
                let youTubePlayer = YouTubePlayer(
                    source: .video(id: video.snippet?.resourceId?.videoId ?? ""),
                    configuration: .init(
                        autoPlay: false
                    )
                )
                
                //Video Player
                YouTubePlayerView (youTubePlayer )
                    .frame(width: proxy.size.width, height: proxy.size.width/1.77778) 
                
                
                //Title and description
                ScrollView{
                    VStack(alignment: .leading){
                        
                        Text(video.snippet?.title ?? "")
                            .font(.headline )
                            .bold()
                        
                        Text(video.snippet?.description ?? "")
                        
                    }
                }
                .scrollIndicators(.hidden )
                .padding()
            }
            
        }
    }
}
