//
//  Post.swift
//  ProductHunt API
//
//  Created by Mac on 11/3/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import Foundation

struct Post
{
    let id: Int?
    let name: String?
    let imageUrl: String?
    let tagline: String?
    let voteNumber: Int?
}

extension Post : Decodable
{
    enum PostKey : String, CodingKey
    {
        case id
        case name
        case thumbnail
        case tagline
        case voteNumber = "votes_count"
    }
    
    enum Image : String, CodingKey
    {
        case imageUrl = "image_url"

    }
    
    init(from decoder: Decoder) throws {
        let container = try? decoder.container(keyedBy: PostKey.self)
        let id = try? container?.decodeIfPresent(Int.self, forKey: .id)
        let name = try? container?.decodeIfPresent(String.self, forKey: .name)
        let tagline = try? container?.decodeIfPresent(String.self, forKey: .tagline)
        let voteNumber = try? container?.decodeIfPresent(Int.self, forKey: .voteNumber)
        let thumbnailContainer = try? container?.nestedContainer(keyedBy: Image.self, forKey: .thumbnail)
        if let _ = thumbnailContainer {
            let imageUrl = try?
            thumbnailContainer??.decodeIfPresent(String.self, forKey: .imageUrl)
            self.init(id: id!, name: name!, imageUrl: imageUrl!, tagline: tagline!, voteNumber: voteNumber!)
            return
        }
         self.init(id: id!, name: name!, imageUrl: "image", tagline: tagline!, voteNumber: voteNumber!)
    }
    
}

struct Posts
{
    let posts : [Post]
}
