//
//  ContentView.swift
//  SwiftUIHandOn
//
//  Created by Ashwani Shakya on 28/06/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var fancyTimer = FancyTimer() // property wich is marked as `StateObject` Can be observed/subscribed
    
    var body: some View {
        Text("\(self.fancyTimer.value)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// MARK: - Difference b/w ObservedObject and StateObject

// When a view creates its own `@ObservedObject` instance it is recreated every time a view is discarded and redrawn:

// A @StateObject is a combination of `@ObservedObject` and `@State` - the instance of the ViewModel will be kept and reused even after a view is discarded and redrawn:

//Performance

//Although an @ObservedObject can impact the performance if the View is forced to recreate a heavy-weight object often, it should not matter much when the @ObservedObject is not complex.


// MARK: - Refrences
//https://stackoverflow.com/questions/62544115/what-is-the-difference-between-observedobject-and-stateobject-in-swiftui

