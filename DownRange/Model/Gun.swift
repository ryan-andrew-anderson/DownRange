//
//  Gun.swift
//  DownRange
//
//  Created by Ryan Anderson on 1/20/21.
//

import Foundation

class Gun: Codable {
    
    var name: String
    var profiles: [Profile] = []
    
    init (name: String) {
        self.name = name
    }
}
