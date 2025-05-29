public protocol Element: Node {
  func build() -> Node
}

extension Element {
  public func render() -> String {
    return build().render()
  }
}
