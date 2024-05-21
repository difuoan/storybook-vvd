import { describe, expect, it } from "vitest"

function test(text?: string) {
  return text ? `Hello ${text}!` : "Hello!"
}

describe("createGreeting", () => {
  it("creates a generic greeting when no name is provided", () => {
    expect(test()).toBe("Hello!")
  })
  it("creates a specific greeting when a name is provided", () => {
    expect(test("World")).toBe("Hello World!")
  })
})
