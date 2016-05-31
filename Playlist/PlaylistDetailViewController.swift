//
//  PlaylistDetailViewController.swift
//  Playlist
//
//  Created by Tingting Gu on 2016/05/29.
//  Copyright © 2016 Cookrin. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {

    @IBOutlet weak var buttonPressLabel: UILabel!
    var playlist : Playlist?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if playlist != nil {
//            buttonPressLabel.text = playlist!.title
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
