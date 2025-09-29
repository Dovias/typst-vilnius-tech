#import "utility/dictionary.typ": extract, get
#import "utility/predicate.typ": text

#let bibliography(options) = {
  let kind = type(options)
  let valid = (type) => type == str or type == bytes or type == array
  if (valid(kind)) {
    options = (sources: options)
  } else if (kind != dictionary) {
    options = (:)
  }

  let sources = get("sources", from: options, predicate: (value) => valid(type(value)))
  if (sources == none) { return }

  if (type(sources) == array) {
    sources = sources.filter((value) => predicate(type(value))).map((value) => bytes(value))
  } else {
    sources = bytes(sources)
  }

  let arguments = extract("title", from: options, predicate: text)
  std.bibliography(sources, ..arguments)
}