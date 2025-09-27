#let optional(title, default: none, ..rest) = {
  let type = type(title)
  if (type != content and type != str) {
    title = default
  }

  if (title != none) {
    heading(title, ..rest)
  }
}