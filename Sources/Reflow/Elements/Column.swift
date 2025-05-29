import Foundation

public struct Column: Node {
  let children: [Node]
  let alignment: Alignment?

  public init(alignment: Alignment? = nil, children: [Node]) {
    self.children = children
    self.alignment = alignment
  }

  public func render() -> String {
    var styles = ["display": "flex", "flex-direction": "column"]

    if let alignment = alignment {
      styles["align-items"] = alignment.rawValue
    }

    return createElement(
      "div",
      attributes: ["style": createStyles(styles)],
      children: children.map { $0.render() })
  }
}
