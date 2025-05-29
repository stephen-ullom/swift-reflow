import Testing

@testable import Reflow

@Test func testBasicRendering() async throws {
  #expect(
    (Row(children: [Text("Reflow").render()]).render()
      == "<div style=\"display: flex;\">Reflow</div>"))
}
