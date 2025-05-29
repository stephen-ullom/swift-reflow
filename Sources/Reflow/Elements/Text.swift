import Foundation

public struct Text: Node {
  public let text: String
  public let styles: [String: String]

  public init(_ text: String, styles: [String: String] = [:]) {
    self.text = text
    self.styles = styles
  }

  public func render() -> String {
    return createElement("span", attributes: ["style": createStyles(styles)], children: [text])
  }
}
