//
//  iChatApp.swift
//  iChat
//
//  Created by Jorge Wendell on 09/02/22.
//

import SwiftUI
import Firebase

@main
struct iChatApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            SigninView()
        }
    }
}
