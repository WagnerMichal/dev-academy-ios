import SwiftUI

struct ContentView: View {
    var body: some View {
<<<<<<< Updated upstream
        VStack(spacing: 16) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hi!")
            Text("My name is.. (what?)")
            Text("My name is.. (who?)")
            Text("My name is Fat Shady")
        }
        .padding()
=======
        PlacesScene()
>>>>>>> Stashed changes
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
