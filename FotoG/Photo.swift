//
//  Photo.swift
//  FotoG
//
//  Created by Harry Ng on 06/03/2017.
//  Copyright © 2017 DevConcept. All rights reserved.
//

import Foundation

struct Photo {
    var name: String = ""
    var photographerProfileImageName: String = ""
    var caption: String = ""
    var thumbnailImageName: String = ""
    
    static func downloadAllPhotos() -> [Photo] {
        var photos = [Photo]()
        
        for i in 1...10 {
            let photo = Photo(name: "\(i)", photographerProfileImageName: "p\(i)", caption: "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum ", thumbnailImageName: "t\(i)")
            photos.append(photo)
        }
        
        return photos
    }
}
