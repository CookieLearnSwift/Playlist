//
//  PlaylistMasterViewController.swift
//  Playlist
//
//  Created by Tingting Gu on 2016/05/29.
//  Copyright © 2016 Cookrin. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    @IBOutlet weak var aButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        aButton.setTitle("EnterDetail", forState: .Normal)
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
            let playlistDetailViewController : PlaylistDetailViewController = segue.destinationViewController as! PlaylistDetailViewController
            playlistDetailViewController.segueLabelText = "Pressed Button!"
        }
    }

}

