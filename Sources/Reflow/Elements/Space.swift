public struct Space: Node {
  let width: String?
  let height: String?

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
