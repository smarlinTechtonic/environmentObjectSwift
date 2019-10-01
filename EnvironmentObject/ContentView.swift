// This Demo shows how to use the EnviromentObject to send state data to all views

import SwiftUI

struct ContentView : View {
    
    // Declare an @EnvironmentObject
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        NavigationView {
            List {
                Text("TextField from View 1")
                TextField("Email: ", text: $settings.email)
                    .padding(12)
                // Render View 2, which also has access to the environmentObject and can change it.
                View2()
            }
        }
    }
}

#if DEBUG
let settings = UserSettings()
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        // not coming from scenedelegate
        ContentView().environmentObject(settings)
    }
}
#endif
