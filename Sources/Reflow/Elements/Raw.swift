public struct Raw: Node {
  let html: String

  public init(_ html: String) {
    self.html = html
  }

  public func render() -> String {
    return html
  }
}
