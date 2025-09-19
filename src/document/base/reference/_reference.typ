#let _reference(body) = {
  show ref: it => {
    let equation = math.equation
    let element = it.element
    if element != none and element.func() == equation {
      link(
        element.location(),
        numbering(element.numbering, ..counter(equation).at(element.location()))
      )
    } else {
      it
    }
  }

  body
}