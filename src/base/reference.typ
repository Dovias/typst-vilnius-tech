#import "figure.typ": attachment

#let reference(body) = {
  show ref: set ref(supplement: none)
  show ref: it => {
    let element = it.element
    if (element == none) {
      return it
    }
    
    let type = element.func()
    if (type == figure) {
      let prefix = numbering("1", ..element.counter.at(element.location()))
      let kind = element.kind
      let suffix = if (kind == table) [lentelę]
        else if (kind == attachment) [priedą]
        else [pav.]
                   
      [(žr.#sym.space.nobreak#link(element.location())[#prefix#sym.space.nobreak#suffix])]
    } else if (type == math.equation) [
      (#link(element.location())[#numbering("1", ..counter(math.equation).at(element.location()))])
    ] else {
      it
    }
  }

  body
}