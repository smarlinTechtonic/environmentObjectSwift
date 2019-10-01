
import Foundation
import SwiftUI
import Combine

class UserSettings: BindableObject {
    
    let didChange = PassthroughSubject<Void, Never>()
    
    var firstName: String = "" { didSet { didChange.send() } }
    var lastName: String = "" { didSet { didChange.send() } }
    var email: String = "" {didSet { didChange.send() } }
}
