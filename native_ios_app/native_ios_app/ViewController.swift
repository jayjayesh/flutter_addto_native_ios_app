//
//  ViewController.swift
//  native_ios_app
//
//  Created by Lathiya Jayesh on 08/12/23.
//

import Flutter
import UIKit

class ViewController: UIViewController {
    
    var flutterDependencies: FlutterDependencies = FlutterDependencies()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTapOpenFlutterScreen(_ sender: Any) {
        
        flutterDependencies = FlutterDependencies()
        openFlutterApp()
        
    }
    

    func openFlutterApp() {
      // Get the RootViewController.
      guard
        let windowScene = UIApplication.shared.connectedScenes
          .first(where: { $0.activationState == .foregroundActive && $0 is UIWindowScene }) as? UIWindowScene,
        let window = windowScene.windows.first(where: \.isKeyWindow),
        let rootViewController = window.rootViewController
      else { return }
      
      // Create the FlutterViewController.
      let flutterViewController = FlutterViewController(
        engine: flutterDependencies.npsFlutterEngine,
        nibName: nil,
        bundle: nil)
      flutterViewController.modalPresentationStyle = .overCurrentContext
      flutterViewController.isViewOpaque = false
      
      rootViewController.present(flutterViewController, animated: true)
    }
}

