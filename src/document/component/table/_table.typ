#import "../figure/index.typ": figure

#let _table(caption: none, reference: none, ..rest) = {
  let arguments = (:)
  if (caption != none) {
    arguments.insert("caption", caption)
  }
  if (reference != none) {
    arguments.insert("reference", reference)
  }
  figure(table(..rest), ..arguments)
}