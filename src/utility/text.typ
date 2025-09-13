#let clip(text, content, length, marker: "...") = {
  context {
    let element = content(text)
    if (measure(content(text)).width <= length) {
      return element
    }

    let low = 0
    let high = text.len()

    let result = ""
    while low <= high {
      let middle = low + calc.floor((high - low) / 2)

      let element = content(text.slice(0, middle) + marker)
      let width = measure(element).width
      if width == length {
        return element
      }

      if width > length {
        high = middle - 1
      } else {
        low = middle + 1

        result = element
      }
    }

    result
  }
}

#let sanitize(text) = {
  return text.replace("\n", "\\n")
}