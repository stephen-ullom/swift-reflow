import Foundation

public struct Column: Node {
  let children: [Node]
  let styles: [String: String]

  public init(styles: [String: String] = [:], children: [Node]) {
    self.children = children
    self.styles = styles
  }

  public func render() -> String {
    let baseStyles = ["display": "flex", "flex-direction": "column"]
    let combinedStyles = baseStyles.merging(styles) { _, new in new }

    return createElement(
      "div",
      attributes: ["style": createStyles(combinedStyles)],
      children: children.map { $0.render() }
    )
  }
}
