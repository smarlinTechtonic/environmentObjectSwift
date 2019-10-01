import SwiftUI

struct View2 : View {
    // Also has access to the same object
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        Group {
            Text("TextField from View 2")
            // Can also modify the environment object as it's global state
            TextField("Email: ", text: $settings.email)
                .padding(12)
        }
    }
}

#if DEBUG
struct View2_Previews : PreviewProvider {
    static var previews: some View {
        View2()
    }
}
#endif
