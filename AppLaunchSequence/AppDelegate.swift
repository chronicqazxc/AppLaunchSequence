//
//  AppDelegate.swift
//  Demo
//
//  Created by Hsiao, Wayne on 2019/11/29.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    override init() {
        super.init()
    }
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
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
    
    func application(_ application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool {
        return true
    }
    
    /// - Tag: shouldRestoreApplicationState
    func application(_ application: UIApplication, shouldRestoreApplicationState coder: NSCoder) -> Bool {
        return true
    }

    func application(_ application: UIApplication, didDecodeRestorableStateWith coder: NSCoder) {
        /**    Decode any application state data at the app delegate level.
            If you plan to do any asynchronous initialization for restoration -
            Use these methods to inform the system that state restoration is occuring
               asynchronously after the application has processed its restoration archive on launch.
            In the event of a crash, the system will be able to detect that it may have been
               caused by a bad restoration archive and arrange to ignore it on a subsequent application launch.
        */
        UIApplication.shared.extendStateRestoration()

        DispatchQueue.global(qos: .background).async {
            /**    On background thread:
                Do any additional asynchronous initialization work here.
            */
            DispatchQueue.main.async {
                // Back on main thread: Done asynchronously initializing, complete our state restoration.
                UIApplication.shared.completeStateRestoration()
            }
        }
    }
    
    /** Asks the  the application delegate to provide the specified view controller.
         Returns the view controller object to use or nil if the app delegate does not supply this view controller.
     
         During state restoration, when UIKit encounters a view controller without a restoration class,
         it calls this method to ask for the corresponding view controller object. Your implementation
         of this method should create (or find) the corresponding view controller object and return it.
         If your app delegate does not provide the view controller, return nil.
     */
    func application(
            _ application: UIApplication,
            viewControllerWithRestorationIdentifierPath identifierComponents: [String],
            coder: NSCoder) -> UIViewController? {
        /** If you don't assign a restoration class to each view controller created inside this class,
             here we need to implement this function.
         */
        return nil
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("")
    }
}

