import Testing

@testable import Reflow

@Test func testRenderingWithoutAttributes() async throws {
  let element = Element(tag: "span", children: [Text("Reflow")])

  #expect((element.render() == "<span>Reflow</span>"))
}

@Test func testRenderingWithAttributes() async throws {
  let element = Element(tag: "span", attributes: ["class": "test"], children: [Text("Reflow")])

  #expect((element.render() == "<span class=\"test\">Reflow</span>"))
}
