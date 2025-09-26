#let list(body) = {
  show std.list: it => {
    // Simulate lists under enums because list
    // marker function is lacking information for
    // hierarchical indentation support:
    for child in it.children {
      enum.item(0, child.body)
    }
  }

  body
}