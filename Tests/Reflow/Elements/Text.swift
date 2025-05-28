import Testing

@testable import Reflow

@Test func testBasicTextRendering() async throws {
  #expect((Text("Hello, World!").render() == "Hello, World!"))
}
