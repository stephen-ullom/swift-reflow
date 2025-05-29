import Testing

@testable import Reflow

@Test func testRenderingWithoutAttributes() async throws {
  let element = createElement("span", children: ["Reflow"])

  #expect((element == "<span>Reflow</span>"))
}

@Test func testRenderingWithAttributes() async throws {
  let element = createElement("span", attributes: ["class": "test"], children: ["Reflow"])

  #expect((element == "<span class=\"test\">Reflow</span>"))
}
