//
//  AppDelegate.swift
//  native_ios_app
//
//  Created by Lathiya Jayesh on 08/12/23.
//

import UIKit
import Flutter
//import FlutterPluginRegistrant

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}



///
class FlutterDependencies: ObservableObject {
  let npsFlutterEngine = FlutterEngine(name: "flutter_nps_engine")

  init() {
    // Prepare a Flutter engine in advance.
    npsFlutterEngine.run()
    // npsFlutterEngine.run(withEntrypoint: "main", initialRoute: "/capture")
    // npsFlutterEngine.run(withEntrypoint: "main", initialRoute: "/end")
    // npsFlutterEngine.run(withEntrypoint: "main", initialRoute: "/default_hello_world_page")
    // npsFlutterEngine.run(withEntrypoint: "main", initialRoute: "/default_counter_page")
  }
}
