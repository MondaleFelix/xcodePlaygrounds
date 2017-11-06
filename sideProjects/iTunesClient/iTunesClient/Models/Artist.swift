//
//  Artist.swift
//  iTunesClient
//
//  Created by Mac on 10/29/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import Foundation


class Artist{
    let id: Int
    let name: String
    let primaryGenre: Genre
    var albums: [Album]
    
    init(id: Int, name: String, primaryGenre: Genre, albums: [Album]){
        self.id = id
        self.name = name
        self.primaryGenre = primaryGenre
        self.albums = albums
    }
}
