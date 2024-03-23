// Application life cycle - Swift

// There are 5 states in the application life cycle

// 1. Not running: The app has not been launched or was running but was terminated by the system.

// 2. Inactive: The app is running in the foreground but is currently not receiving events. 
// This might happen as the app is transitioning between states.

// 3. Active: The app is running in the foreground and is receiving events. 
// This is the normal mode for the app.

// 4. Background: The app is in the background and executing code.
//  Most apps enter this state briefly on their way to being suspended.

// 5. Suspended: The app is in the background but is not executing code. 
// The system moves apps to this state automatically and does not notify them before doing so.

// Some of the methods that are called when the app transitions between states are:

// Not running ->
// application(_:didFinishLaunchingWithOptions:)

// Inactive ->
// applicationWillResignActive(_:)

// Active ->
// applicationDidBecomeActive(_:)

// Background ->
// applicationDidEnterBackground(_:)

// Suspended ->
// applicationWillTerminate(_:)

import SwiftUI

@main
struct ApplicationLifeCycleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate : NSObject, UIApplicationDelegate {

    // This method is called when the app is launched
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("Application did finish launching with options")
        return true
    }


    // These methods are called when the app transitions between states
    func applicationWillResignActive(_ application: UIApplication) {
        print("Application will resign active")
    }

    // This method is called when the app becomes active
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("Application did become active")
    }
    
    // This method is called when the app enters the background
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("Application did enter background")
    }
    
    // This method is called when the app is about to terminate
    func applicationWillTerminate(_ application: UIApplication) {
        print("Application will terminate")
    }
}

