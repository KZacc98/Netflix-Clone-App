//
//  YoutubeSearchResponse.swift
//  Netflix Clone App
//
//  Created by Kamil Zachara on 07/04/2022.
//

import Foundation

struct YoutubeSearchResponse: Codable{
    let items: [VideoElement]
}

struct VideoElement: Codable{
    let id: IdVideoElement
}

struct IdVideoElement: Codable{
    let kind:String
    let videoId: String
}
