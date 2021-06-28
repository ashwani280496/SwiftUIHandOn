//
//  fancyTimer.swift
//  SwiftUIHandOn
//
//  Created by Ashwani Shakya on 28/06/21.
//

import Foundation

class FancyTimer:ObservableObject{ //FancyTimer is inheritad from ObservableObject class, so the FancyTimer's Object can be observed
    
    @Published var value = 0 // @Published means whenever value of properties is changes, it publish it to its ObservedObject/Subscribe
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { value in
            self.value += 1
        }
    }
}
