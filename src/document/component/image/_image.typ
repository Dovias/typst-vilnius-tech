#import "../figure/index.typ": figure

#let _image(caption: none, reference: none, ..rest) = {
  let arguments = (:)
  if (caption != none) {
    arguments.insert("caption", caption)
  }
  if (reference != none) {
    arguments.insert("reference", reference)
  }
  figure(image(..rest), ..arguments)
}