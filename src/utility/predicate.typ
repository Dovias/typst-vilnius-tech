#let positive() = true

#let boolean(value) = {
  return type(value) == bool
}

#let text(value) = {
  let type = type(value)
  return type == str or type == content
}