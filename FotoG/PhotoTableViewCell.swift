//
//  PhotoTableViewCell.swift
//  FotoG
//
//  Created by Harry Ng on 06/03/2017.
//  Copyright © 2017 DevConcept. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!

    var photo : Photo! {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        photoImageView.image = UIImage(named: photo.name)
        profileImageView.image = UIImage(named: photo.photographerProfileImageName)
        captionLabel.text = photo.caption
        
        profileImageView.layer.cornerRadius = profileImageView.bounds.width / 2
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.borderWidth = 1
        profileImageView.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.6).cgColor
        profileImageView.layer.shadowOffset = CGSize(width: 0, height: 0)
        profileImageView.layer.shadowOpacity = 1
        profileImageView.layer.shadowRadius = 6
        
        captionLabel.layer.shadowOffset = CGSize(width: 0, height: 0)
        captionLabel.layer.shadowOpacity = 1
        captionLabel.layer.shadowRadius = 6
    }
    
}
