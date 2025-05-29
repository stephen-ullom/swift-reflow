public func createDocument(children: [Node], attributes: [String: String] = [:]) -> String {
  let body = createElement(
    "body",
    attributes: attributes,
    children: children.map { $0.render() })

  return createElement("html", children: [body])
}
