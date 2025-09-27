#let optional(label, element) = {
  if (type(label) != str) [#element] else [#element #std.label(label)]
}