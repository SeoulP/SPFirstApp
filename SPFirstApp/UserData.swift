import SwiftUI
// Combine is used for events
import Combine

// final means no other classes can inheret from this class
final class UserData : ObservableObject
{
    // @Published means that this automatially updates anything that uses this variable
    @Published var counter: Int = 0
    
    @Published var asdf: String = "asdf"
    {
        willSet(newValue)
        {
            print(newValue)
        }
    }
}
