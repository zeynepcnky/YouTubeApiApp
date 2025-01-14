//
//  DataService.swift
//  YouTubeApiApp
//
//  Created by Zeynep Cankaya on 9.08.2024.
//

import Foundation
struct DataService {
    private let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func getVideo ()async -> [Video] {
        
        //Check api key
               guard apiKey != nil else {
            return [Video]()
        }
        
        //Create URL
        let urlString = "https://www.googleapis.com/youtube/v3/playlistItems?&part=snippet&playlistId=PL7zoYQ-ormEpAMLxUBidP7DOdhjw0dMEW&maxResults=7&key=\(apiKey!)"
        let url = URL(string: urlString)
        
        // Create request
        if let url = url {
            let request = URLRequest(url: url)
            let session = URLSession.shared
            
            do{
                // Send request
                let (data,_) = try await session.data(for: request)
                
                //Parse the data
                let decoder = JSONDecoder()
                let playlist = try decoder.decode(Playlist.self, from: data)
                
                return playlist.items
            }
            catch{
                print(error)
            }
        
            
        }
        return [Video]()
    }
}
 
