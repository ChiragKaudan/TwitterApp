//
//  TweetCellTableViewCell.swift
//  Twitter
//
//  Created by Chirag Kaudan on 9/17/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class TweetCellTableViewCell: UITableViewCell {

    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var tweetContent: UILabel!
    
    
    @IBOutlet weak var retweetButton: UIButton!
    
    @IBOutlet weak var favButton: UIButton!
    
    var favorited:Bool = false
    var tweetId:Int = -1
 
    
    @IBAction func favoriteTweet(_ sender: Any) {
    let toBeFavorited = !favorited
        if (toBeFavorited) {
           setFavorite(true)
            //TwitterAPICaller.client?.favoriteTweet
            
        }
        else {
            setFavorite(false)
        }
    
    
    }
    
    @IBAction func retweet(_ sender: Any) {
        self.setRetweeted(true)
        
    
    }
    
    func setRetweeted(_ isRetweeted:Bool){
        if (isRetweeted){
            retweetButton.setImage(UIImage(named: "retweet-icon-green"), for: UIControl.State.normal)
            retweetButton.isEnabled = false
        } else {
            retweetButton.setImage(UIImage(named: "retweet-icon"), for: UIControl.State.normal)
                      retweetButton.isEnabled = true
            
        }
    }
    
    
    
    
    func setFavorite(_ isFavorited:Bool){
        favorited = isFavorited
        if(favorited) {
            favButton.setImage(UIImage(named: "favor-icon-red"), for: UIControl.State.normal)
        }
        else {
            favButton.setImage(UIImage(named: "favor-icon"), for: UIControl.State.normal)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
