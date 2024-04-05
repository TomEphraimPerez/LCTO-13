//
//  LCTO_13App.swift
//  LCTO-13
//
//  Created by thomasperez on 3/31/24.
//



// UIApplication_ _ _ ->
// NSApplication_ _ _ .

import SwiftUI
import FirebaseCore
//import Firebase
//? import FirebaseAnalytics ?
 
// https://console.firebase.google.com/u/0/project/lcto-13/overview
// // Use Firebase library to configure APIs
class AppDelegate: NSObject, NSApplicationDelegate {
    func application(_ application: NSApplication,
                //didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {     //o
                  didFinishLaunchingWithOptions launchOptions: [NSApplication : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}


// register app delegate for Firebase setup
@main
struct LCTO_13App: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
      WindowGroup {
        NavigationView {
          ContentView()
        }
      }
    }
  }
