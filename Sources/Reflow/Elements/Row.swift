import Foundation

struct Row: Node {
  let children: [String]

  func render() -> String {
    return createElement("div", attributes: ["style": "display: flex;"], children: children)
  }
}
