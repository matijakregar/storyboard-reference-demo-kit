//
//  Company.swift
//  StoryboardRefDemoKit
//
//  Created by Matija Kregar on 03/11/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import Foundation

public protocol Company {
    var name: String { get set }
    var catchPhrase: String { get set }
    var bs: String { get set }
    var logoURL: URL? { get set }
}
