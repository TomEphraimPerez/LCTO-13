//
//  LCTO_13App.swift
//  LCTO-13
//
//  Created by thomasperez on 3/31/24.
//



import SwiftUI
import FirebaseCore
//import Firebase
//? import FirebaseAnalytics ?
 
// https://console.firebase.google.com/u/0/project/lcto-13/overview
// // Use Firebase library to configure APIs
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}



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
