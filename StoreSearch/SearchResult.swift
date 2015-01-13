//
//  SearchResult.swift
//  StoreSearch
//
//  Created by Atikur Rahman on 1/5/15.
//  Copyright (c) 2015 Atikur Rahman. All rights reserved.
//

class SearchResult {
    var name = ""
    var artistName = ""
    var artworkURL60 = ""
    var artworkURL100 = ""
    var storeURL = ""
    var kind = ""
    var currency = ""
    var price = 0.0
    var genre = ""
    
    func kindForDisplay() -> String {
        switch kind {
        case "album": return "Album"
        case "audiobook": return "Audio Book"
        case "book": return "Book"
        case "ebook": return "E-Book"
        case "feature-movie": return "Movie"
        case "music-vedio": return "Musi Video"
        case "podcast": return "App"
        case "software": return "App"
        case "song": return "Song"
        case "tv-episode": return "TV Episode"
        default: return kind
        }
    }
}
