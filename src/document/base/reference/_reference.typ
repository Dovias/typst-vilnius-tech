#let _reference(body) = {
  show ref.where: it => {
    let element = it.element
    if (element == none) {
      return
    }
    
    let kind = element.func()
    if (kind == equation) {
      link(element.location())[#numbering(element.numbering, ..counter(equation).at(element.location()))]
    } else {
      link(element.location())[(#numbering(element.numbering, ..element.counter.at(element.location())))]
    }
      
  }

  body
}