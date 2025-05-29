public func createDocument(children: [Node], attributes: [String: String] = [:]) -> String {
  return createElement(
    "html",
    attributes: attributes,
    children: [
      createElement(
        "body",
        children: children.map { $0.render() })
    ])

}
