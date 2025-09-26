#let reference(body) = {
  show ref: set ref(supplement: none)
  show ref: it => {
    let element = it.element
    if (element == none) {
      return it
    }
    
    let kind = element.func()
    let equation = math.equation
    if (kind == equation) {
      link(element.location())[#numbering(element.numbering, ..counter(equation).at(element.location()))]
    } else [
      (#it)
    ]
  }

  body
}