import Foundation

public struct Text {
  public let text: String

  public init(text: String) {
    self.text = text
  }

  public func render() -> String {
    return "<span>\(text)</span>"
  }
}
