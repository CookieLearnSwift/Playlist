//
//  Playlist.swift
//  Playlist
//
//  Created by Tingting Gu on 2016/05/30.
//  Copyright © 2016 Cookrin. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {

    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    var artists: [String] = []
    var backgroundColor: UIColor = UIColor.clearColor()

    init(index: Int) {
        let musicLibrary = MusicLibrary().library;
        let playlistDictionary = musicLibrary[index]

        title = playlistDictionary["title"] as! String?
        description = playlistDictionary["description"] as! String?

        let iconName = playlistDictionary["icon"] as! String?
        icon = UIImage.init(named: iconName!)

        let largeIconName = playlistDictionary["largeIcon"] as! String?
        largeIcon = UIImage.init(named: largeIconName!)

        artists += playlistDictionary["artists"] as! [String]

        let colorDictionary = playlistDictionary["backgroundColor"] as! [String:CGFloat]
        backgroundColor = rgbColorFromDictionary(colorDictionary)
    }

    func rgbColorFromDictionary(colorDictionary: [String:CGFloat])->UIColor {
        let red = colorDictionary["red"]!
        let green = colorDictionary["green"]!
        let blue = colorDictionary["blue"]!
        let alpha = colorDictionary["alpha"]!

        return UIColor.init(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }

}