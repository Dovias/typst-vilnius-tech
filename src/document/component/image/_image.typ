#let _image(caption: none, ..rest) = {
  let arguments = (:)
  if (caption != none) {
    arguments.insert("caption", caption)
  }
  figure(image(..rest), ..arguments)
}