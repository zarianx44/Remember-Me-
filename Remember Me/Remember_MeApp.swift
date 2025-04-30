import SwiftUI
import SwiftData
import Firebase

@main
struct Remember_MeApp: App {
    
    // Initialize Firebase
    init() {
        FirebaseApp.configure()
    }

    // Shared ModelContainer
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([Item.self])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(sharedModelContainer)  // Inject model container
        }
    }
}
