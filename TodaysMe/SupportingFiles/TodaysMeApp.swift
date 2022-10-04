//
//  TodaysMeApp.swift
//  TodaysMe
//
//  Created by kelly on 2022/04/27.
//

import SwiftUI

@main
struct TodaysMeApp: App {
    @StateObject private var avatarDataController = AvatarDataController()
    var body: some Scene {
        WindowGroup {
            CharacterView()
                .environment(\.managedObjectContext, avatarDataController.container.viewContext)
        }
    }
}
