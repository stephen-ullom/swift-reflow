import Testing

@testable import Reflow

@Test func testBasicTextRendering() async throws {
  #expect((Text(text: "Hello, World!").render() == "<span>Hello, World!</span>"))
}
