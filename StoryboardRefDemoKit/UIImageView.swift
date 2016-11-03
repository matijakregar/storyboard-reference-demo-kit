//
//  UIImageView.swift
//  StoryboardRefDemoKit
//
//  Created by Matija Kregar on 03/11/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import UIKit

extension UIImageView {
    public func imageFromURL(_ url: URL) {
        
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) -> Void in
            if error != nil {
                print(error!)
                return
            }
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: data!)
                self.image = image
            })
            
        }).resume()
    }}
