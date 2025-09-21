#let _table(caption: none, reference: none, ..rest) = {
  let arguments = (:)
  if (caption != none) {
    arguments.insert("caption", caption)
  }
  figure(table(..rest), ..arguments)
}