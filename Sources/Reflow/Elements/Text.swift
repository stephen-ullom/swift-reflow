import Foundation

public struct Text: Node {
  public let text: String

  public init(_ text: String) {
    self.text = text
  }

  public func render() -> String {
    return text
  }
}
