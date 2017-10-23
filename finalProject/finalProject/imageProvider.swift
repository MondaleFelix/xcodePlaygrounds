//
//  imageProvider.swift
//  finalProject
//
//  Created by Mac on 10/21/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import GameKit

struct ImageProvider {
    static let images = [
        "Elmer",
        "Mondale",
        "Duncan",
        "Sky",
        "Kaichi"
    ]
    
    func randomImage() -> String{
        let randomPerson = GKRandomSource.sharedRandom().nextInt(upperBound: ImageProvider.images.count)
        return ImageProvider.images[randomPerson]
    }
    
}
