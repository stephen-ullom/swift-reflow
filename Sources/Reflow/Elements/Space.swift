public struct Space: Node {
  public let width: String?
  public let height: String?

  public init(width: String? = nil, height: String? = nil) {
    self.width = width
    self.height = height
  }

  public func render() -> String {
    var style: [String: String] = [:]
    if let width = width { style["width"] = width }
    if let height = height { style["height"] = height }

    return createElement("div", attributes: ["style": createStyles(style)])
  }
}
