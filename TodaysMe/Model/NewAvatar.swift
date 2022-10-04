//
//  NewAvatar.swift
//  TodaysMe
//
//  Created by kelly on 2022/05/05.
//

import Foundation


struct newAvatar: Codable {
    var date: Date = Date()
    var face: String = ""
    var hair: String = ""
    var eyes: String = ""
    var mouth: String = ""
    var message: String = ""
}
