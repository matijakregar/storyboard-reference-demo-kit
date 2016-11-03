//
//  KitCompanyTableViewCell.swift
//  StoryboardRefDemoKit
//
//  Created by Matija Kregar on 03/11/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import UIKit

public class KitCompanyTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var logoView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!

    func set(name: String!, logoURL: URL?) {
        nameLabel.text = name
        if let logoURL = logoURL {
            logoView.imageFromURL(logoURL)
        }
    }
    
    override public func prepareForReuse() {
        logoView.image = nil
        nameLabel.text = ""
    }

}
