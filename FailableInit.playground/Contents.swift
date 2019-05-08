import UIKit
import Foundation

enum FSErrors: Error {
    case noName
}

// First way

struct FSProfile {
    let name: String
    init(name: String) throws {
        if name.isEmpty {
            throw FSErrors.noName
        }
        self.name = name
    }
}

do {
    _ = try FSProfile(name: "")
} catch FSErrors.noName {
    print("Error: No name")
}

// Second way

class FSDetails {
    let detail: String
    init?(detail: String) {
        if detail.isEmpty {
            return nil
        }
        self.detail = detail
    }
}

let details = FSDetails(detail: "")


