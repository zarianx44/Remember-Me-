//
//  AppDelegate.swift
//  Remember Me
//
//  Created by Zara on 2025-04-30.
//

import Foundation

import SwiftUI

import UIKit
import FirebaseCore

class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Use Firebase library to configure APIs.
    FirebaseApp.configure() // Make SURE this is ONLY here
    return true
  }

}

