import SwiftUI

@main
struct CampusViewTVApp: App {

    var body: some Scene {
        WindowGroup {
            HomeView()
                .preferredColorScheme(.dark)
        }
    }
}
