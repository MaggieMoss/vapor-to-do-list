import Vapor

final class TaskController: Resource {
  typealias Item = Task

  let drop: Droplet
  init(droplet: Droplet) {
    drop = droplet
  }

  func index(request: Request) throws -> ResponseRepresentable {
    return JSON([
      "controller": "TaskController.index"
    ])
  }

  func store(request: Request, test: test) throws -> ResponseRepresentable {
    print(test)
    return JSON([
      "saved the description"
    ])
  }
}