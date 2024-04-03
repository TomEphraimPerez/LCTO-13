//
//  LCTO_13App.swift
//  LCTO-13
//
//  Created by thomasperez on 3/31/24.
//

/*
import SwiftUI

@main
struct LCTO_13App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
*/

import SwiftUI
import FirebaseCore

@main
struct LCTO_13App: App {
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
      WindowGroup {
        NavigationView {
          ContentView()
        }
      }
    }
  }
