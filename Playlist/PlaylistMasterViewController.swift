//
//  PlaylistMasterViewController.swift
//  Playlist
//
//  Created by Tingting Gu on 2016/05/29.
//  Copyright © 2016 Cookrin. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    var playlistArray: [UIImageView] = []

    @IBOutlet weak var playlistImageView0: UIImageView!
    @IBOutlet weak var playlistImageView1: UIImageView!
    @IBOutlet weak var playlistImageView2: UIImageView!
    @IBOutlet weak var playlistImageView3: UIImageView!
    @IBOutlet weak var playlistImageView4: UIImageView!
    @IBOutlet weak var playlistImageView5: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        playlistArray += [playlistImageView0, playlistImageView1, playlistImageView2, playlistImageView3, playlistImageView4, playlistImageView5]

        for index in 0..<playlistArray.count {
            let playlist = Playlist.init(index: index)
            let playlistImageView = playlistArray[index]
            playlistImageView.image = playlist.icon
            playlistImageView.backgroundColor = playlist.backgroundColor
        }

//        aButton.setTitle("EnterDetail", forState: .Normal)

        let playlist = Playlist.init(index: 0)
        playlistImageView0.image = playlist.icon
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    @IBAction func buttonPressed() {
//        view.backgroundColor = UIColor.orangeColor()
//    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetail" {

            let playlistImageView = sender!.view! as? UIImageView
            // find method is unvalid
            if let index = playlistArray.indexOf(playlistImageView!) {
                let playlistDetailViewController : PlaylistDetailViewController? = segue.destinationViewController as? PlaylistDetailViewController
                playlistDetailViewController!.playlist = Playlist.init(index: index)
            }
        }
    }

    @IBAction func showPlaylistDetail(sender: AnyObject) {
        print("Stop touching me!")

        performSegueWithIdentifier("showPlaylistDetail", sender: sender)
    }
}
