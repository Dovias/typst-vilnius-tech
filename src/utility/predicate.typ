#let positive(value) = true

#let collection(value) = {
  let type = type(value)
  type == array or type == dictionary
}
#let boolean(value) = type(value) == bool
#let string(value) = type(value) == str
#let text(value) = {
  let type = type(value)
  return type == str or type == content
}