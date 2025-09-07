public struct Raw: Node {
  public let html: String

  public init(_ html: String) {
    self.html = html
  }

  public func render() -> String {
    return html
  }
}
