//
//  imageProvider.swift
//  finalProject
//
//  Created by Mac on 10/21/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import GameKit

struct ImageProvider {
    let images = [
        "elmer.jpg",
        "mondale.jpg",
        "duncan.jpg"
    ]
    
    func randomImage() -> String{
        let randomPerson = GKRandomSource.sharedRandom().nextInt(upperBound: images.count)
        return images[randomPerson]
    }
    
}
