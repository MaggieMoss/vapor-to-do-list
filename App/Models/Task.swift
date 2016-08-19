import Vapor

final class Task {
  var description: String

  init(description: String) {
    self.description = description
  }
}

extension Task: JSONRepresentable {
  func makeJSON() -> JSON {
    return JSON([
      "description": "\(description)"
    ])
  }
}


extension Task: StringInitializable {
  convenience init?(from string: String) throws {
    self.init(description: string)
  }
}