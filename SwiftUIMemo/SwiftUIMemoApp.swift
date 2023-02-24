//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by 김명수 on 2023/02/24.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
