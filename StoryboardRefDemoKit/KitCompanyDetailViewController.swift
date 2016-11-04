//
//  KitCompanyDetailViewController.swift
//  StoryboardRefDemoKit
//
//  Created by Matija Kregar on 03/11/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import UIKit

// A view controller that presents a single company details.

public class KitCompanyDetailViewController: UIViewController {
    
    @IBOutlet private weak var logoView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var catchPhraseLabel: UILabel!
    @IBOutlet private weak var bsLabel: UILabel!
    
    public var company: Company? {
        didSet {
            if let company = company,
                logoView != nil {
                displayCompany(company)
            }
        }
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        
        if let company = company {
            displayCompany(company)
        }
    }
    
    private func displayCompany(_ company: Company) {
        nameLabel.text = company.name
        catchPhraseLabel.text = company.catchPhrase
        bsLabel.text = company.bs
        
        if let logoURL = company.logoURL {
            logoView.imageFromURL(logoURL)
        }
    }

}
